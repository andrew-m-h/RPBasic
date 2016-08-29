{-# Safe #-}
module Analyse where

import Parser

import Prelude hiding (Ordering(..))
import Control.Monad.State.Strict
import Control.Monad.Except
import Data.Int (Int32)
import Data.Maybe (fromJust)

import qualified Data.Map.Strict as M
import Text.Printf

type Offset = Int32

data Func = Func {
  fnRetAddr :: Offset, fnArgs :: FuncParams, fnRetType :: DataType, fnLocalVars :: M.Map String (DataType, Offset, VarInit), fnBody :: FuncBody
  } deriving (Eq, Show)

data SubRtn = SubRtn {
  subRetAddr :: Offset, subArgs :: SubParams, subLocalVars :: M.Map String Offset, subBody :: SubBody
  } deriving (Eq, Show)

data ProgContext = ProgContext {
  globalVars :: M.Map String (DataType, Offset, VarInit),
  funcs :: M.Map String Func,
  subs :: M.Map String SubRtn,
  typeDefs :: M.Map String DataType,
  structs :: M.Map String StructContents
  } deriving (Eq, Show)

type SemanticError = String

type SemanticCheck = ExceptT SemanticError (State ProgContext)

checkProgram :: Program -> SemanticCheck ()
checkProgram (Program prog) = do
  mapM_ checkGlobalStmt prog
  undefined

checkGlobalStmt :: GlobalStatement -> SemanticCheck ()
checkGlobalStmt stmt = do
  ctx <- get
  case stmt of
    FnDecl name params retType -> do
      case isRedeclaration ctx name of
        True -> throwError $ printf "Re-Declaration of function %s\n" name
        False -> do
          params' <- resolveFnParamTypes params
          put $ ctx {funcs = M.insert name (Func 0 params' retType M.empty (FuncBody [])) (funcs ctx)}
    Function name params retType body -> case isRedeclaration ctx name of
      True -> throwError $ printf "Function redeclaration %s\n" name
      False -> do
        params' <- resolveFnParamTypes params
        put $ ctx {funcs = M.insert name (Func 0 params' retType M.empty body) (funcs ctx)}
        checkFuncBody name body
    SubDecl name params -> do
      case isRedeclaration ctx name of
        True -> throwError $ printf "Function redeclaration %s\n" name
        False -> do
          params' <- resolveSubParamTypes params
          put $ ctx {subs  = M.insert name (SubRtn 0 params' M.empty (SubBody [])) (subs ctx)}
    Subroutine name params body -> case isRedeclaration ctx name of
      True -> throwError $ printf "Subroutine redeclaration %s\n" name
      False -> do
        params' <- resolveSubParamTypes params
        put $ ctx {subs = M.insert name (SubRtn 0 params' M.empty body) (subs ctx)}
        checkSubBody body
    G_VarDecl name dtype -> case isRedeclaration ctx name of
      True -> throwError $ printf "Variable Redeclaration %s\n" name
      False -> do
        dtype' <- resolveDataType dtype
        put $ ctx {globalVars = M.insert name (dtype', 0, InitExpr $ IntLit 0) (globalVars ctx)}
    G_VarDeclInit name dtype expr -> case isRedeclaration ctx name of
      True -> throwError $ printf "Variable Redeclaration %s\n" name
      False -> do
        checkVarInit Nothing expr
        dtype' <- resolveDataType dtype
        put $ ctx {globalVars = M.insert name (dtype', 0, expr) (globalVars ctx)}
    Typedef name dtype -> case isRedeclaration ctx name of
      True -> throwError $ printf "Type redeclaration %s\n" name
      False -> put $ ctx {typeDefs = M.insert name dtype $ typeDefs ctx}
    Struct name contents -> case isRedeclaration ctx name of
      True -> throwError $ printf "struct redeclaration %s\n" name
      False -> put $ ctx {structs = M.insert name contents $ structs ctx}

isRedeclaration :: ProgContext -> String -> Bool
isRedeclaration ctx name = (M.member name $ typeDefs ctx) ||
                           (M.member name $ funcs ctx) ||
                           (M.member name $ subs ctx) ||
                           (M.member name $ globalVars ctx)

checkFuncBody :: String -> FuncBody -> SemanticCheck ()
checkFuncBody name (FuncBody stmts) = mapM_ (checkFuncStmts name) stmts

checkFuncStmts :: String -> FuncStmt -> SemanticCheck ()
checkFuncStmts fnName stmt = do
  ctx <- get
  let fns = funcs ctx
      fnCtx = fromJust $ M.lookup fnName fns
  case stmt of
    FunVarDecl name dtype -> case M.member name . fnLocalVars <$> (M.lookup fnName fns) of
      Nothing -> throwError $ printf "Could not find function %s\n" fnName
      Just True -> throwError $ printf "Variable redeclaration %s\n" name
      Just False -> put $ ctx {funcs = M.insert fnName (fnCtx { fnLocalVars = M.insert name (dtype, 0, InitExpr $ IntLit 0) (fnLocalVars fnCtx)}) fns}
    FunVarDeclInit name dtype expr -> case M.member name . fnLocalVars <$> (M.lookup fnName fns) of
      Nothing -> throwError $ printf "Could not find function %s\n" fnName
      Just True -> throwError $ printf "Variable redeclaration %s\n" name
      Just False -> do
        checkVarInit (Just fnName) expr
        put $ ctx {funcs = M.insert fnName (fnCtx { fnLocalVars = M.insert name (dtype, 0, expr) (fnLocalVars fnCtx)}) fns}
    FunAssign var expr -> do
      checkVariable (Just fnName) var
      checkExpression (Just fnName) expr
    FunWhile expr fnbody -> do
      checkExpression (Just fnName) expr
      checkFuncBody fnName fnbody
    FunIfElse expr fnbody elseifs elsebody -> do
      checkExpression (Just fnName) expr
      checkFuncBody fnName fnbody
      checkFnelifs fnName elseifs
      checkFuncBody fnName elsebody
    FunIf expr fnbody elseifs -> do
      checkExpression (Just fnName) expr
      checkFuncBody fnName fnbody
      checkFnelifs fnName elseifs
    FunRet expr -> do
      checkExpression (Just fnName) expr

checkFnelifs :: String -> FuncElseifs -> SemanticCheck ()
checkFnelifs = undefined

checkVarInit :: Maybe String -> VarInit -> SemanticCheck ()
checkVarInit = undefined

checkVariable :: Maybe String -> Variable -> SemanticCheck ()
checkVariable = undefined

checkExpression :: Maybe String -> Expression -> SemanticCheck ()
checkExpression = undefined

checkSubBody :: SubBody -> SemanticCheck ()
checkSubBody = undefined

resolveDataType :: DataType -> SemanticCheck DataType
resolveDataType dtype = case dtype of
  IntType -> return IntType
  CharType -> return CharType
  PtrType t -> PtrType <$> resolveDataType t
  Typename t -> do
    types <- gets typeDefs
    case M.lookup t types of
      Nothing -> throwError $ printf "Could not resolve typedef %s\n" t
      Just t' -> return t'

resolveFnParamTypes :: FuncParams -> SemanticCheck FuncParams
resolveFnParamTypes (FuncParams params) = FuncParams <$> mapM resolveParam params
  where
    resolveParam (FuncParam name dtype) = FuncParam name <$> resolveDataType dtype

resolveSubParamTypes :: SubParams -> SemanticCheck SubParams
resolveSubParamTypes (SubParams params) = SubParams <$> mapM resolveParam params
  where
    resolveParam (ByrefParam name dtype) = ByrefParam name <$> resolveDataType dtype
    resolveParam (ByvalParam name dtype) = ByvalParam name <$> resolveDataType dtype
