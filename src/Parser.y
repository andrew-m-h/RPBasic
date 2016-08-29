{
{-# LANGUAGE Trustworthy #-}

module Parser where

import Lexer
import safe Prelude hiding (Ordering(..))
import safe Data.Functor
}

%name parse
%tokentype { Token }
%error { parseError }

%token
    int_lit {T_IntLit $$}
    string_lit {T_StringLit $$}
    "dim"   {T_Dim}
    "as"    {T_As}
    "function" {T_Function}
    "sub"   {T_Sub}
    "declare" {T_Declare}
    "byref" {T_ByRef}
    "type"  {T_Type}
    "struct" {T_Struct}
    "asm"   {T_Asm}
    "return" {T_Return}
    "int"   {T_Int}
    "char"  {T_Char}
    "ptr"   {T_Ptr}
    "goto"  {T_Goto}
    "if"    {T_If}
    "else"  {T_Else}
    "select" {T_Select}
    "case"  {T_Case}
    "while" {T_While}
    "for"   {T_For}
    "}"   {T_RBrace}
    "{"   {T_LBrace}
    ")"   {T_RParen}
    "("   {T_LParen}
    "["   {T_LSqBrace}
    "]"   {T_RSqBrace}
    "=="  {T_EQ}
    "!="  {T_NE}
    "="   {T_Assign}
    "or"  {T_Or}
    "and" {T_And}
    "<="  {T_LE}
    ">="  {T_GE}
    "<<"  {T_Shl}
    ">>"  {T_Shr}
    "<"   {T_LT}
    ">"   {T_GT}
    "+"   {T_Add}
    "-"   {T_Subtract}
    "*"   {T_Star}
    "@"   {T_AddrOf}
    "/"   {T_Div}
    "|"   {T_Bor}
    "&"   {T_Band}
    "~"   {T_Bnot}
    "^"   {T_Bxor}
    ";"   {T_SemiColon}
    ":"   {T_Colon}
    ","   {T_Comma}
    label  {T_Label $$}
    identifier {T_Identifier $$}
    typename  {T_Typename $$}


%nonassoc "<" ">" "<=" ">=" "==" "="
%left "+" "-" "<<" ">>" "^" "or" "and"
%left "*" "/"

%%

Program :
        GlobalStatements    {$1}

GlobalStatements :
        GlobalStatements1   {Program $ reverse $1}

GlobalStatements1 :
        GlobalStatements1 GlobalStatement    {$2 : $1}
        | {-empty-}                         {[]}

GlobalStatement :
        "declare" "function" identifier FuncParams "as" DataType ";"    {FnDecl $3 $4 $6}
        | Function                                                      {$1}
        | "declare" "sub" identifier SubParams ";"                      {SubDecl $3 $4}
        | Subroutine                                                    {$1}
        | "dim" identifier "as" DataType ";"                            {G_VarDecl $2 $4}
        | "dim" identifier "as" DataType "=" VarInit ";"                {G_VarDeclInit $2 $4 $6}
        | "type" typename "=" DataType ";"                              {Typedef $2 $4}
        | "struct" identifier StructContents ";"                        {Struct $2 $3}

StructContents :
        "{" StructContents1 "}" {StructContents $ reverse $2}

StructContents1 :
        StructContents1 DataType identifier ";" {(StructVal $2 $3) : $1}
        | {-empty-}                             {[]}

FuncParams :
        "(" FuncParams1 ")"    {FuncParams $ reverse $2}

FuncParams1 :
        FuncParams1 "," FuncParam   {$3 : $1}
        | FuncParam                 {[$1]}
        | {-empty-}                 {[]}

FuncParam :
        identifier "as" DataType    {FuncParam $1 $3}

SubParams :
        "(" SubParams1 ")"          {SubParams $ reverse $2}

SubParams1 :
        SubParams1 "," SubParam   {$3 : $1}
        | SubParam                 {[$1]}
        | {-empty-}                 {[]}

SubParam :
        "byref" identifier "as" DataType    {ByrefParam $2 $4}
        | identifier "as" DataType          {ByvalParam $1 $3}

Function :
        "function" identifier FuncParams "as" DataType FuncBody     {Function $2 $3 $5 $6}

Subroutine :
        "sub" identifier SubParams SubBody      {Subroutine $2 $3 $4}

SubBody :
        "{" SubStmts "}"    {SubBody $ reverse $2}

SubStmts :
        SubStmts SubStmt ";"        {$2 : $1}
        | {-empty-}                 {[]}

SubStmt :
        "dim" identifier "as" DataType                  {SubVarDecl $2 $4}
        | "dim" identifier "as" DataType "=" VarInit    {SubVarDeclInit $2 $4 $6}
        | identifier "(" Arguments ")"                  {SubCall $1 $3}
        | Variable "=" Expression                       {SubAssign $1 $3}
        | "asm" AsmInstrs                               {SubAsm $2}
        | "while" "(" Expression ")" SubBody            {SubWhile $3 $5}
        | "if" "(" Expression ")" SubBody SubElseifs "else" SubBody {SubIfElse $3 $5 $6 $8}
        | "if" "(" Expression ")" SubBody SubElseifs    {SubIf $3 $5 $6}

AsmInstrs :
        "{" AsmInstrs1 "}"        {AsmInstrs $ reverse $2}

AsmInstrs1 :
        AsmInstrs1 "," string_lit {$3 : $1}
        | string_lit              {[$1]}
        | {-empty-}               {[]}

FuncBody :
        "{" FuncStmts "}"   {FuncBody $ reverse $2}

FuncStmts :
        FuncStmts FuncStmt ";"   {$2 : $1}
        | {-empty-}              {[]}

FuncStmt :
        "dim" identifier "as" DataType                  {FunVarDecl $2 $4}
        | "dim" identifier "as" DataType "=" VarInit    {FunVarDeclInit $2 $4 $6}
        | Variable "=" Expression                       {FunAssign $1 $3}
        | "while" "(" Expression ")" FuncBody           {FunWhile $3 $5}
        | "if" "(" Expression ")" FuncBody FuncElseifs "else" FuncBody  {FunIfElse $3 $5 $6 $8}
        | "if" "(" Expression ")" FuncBody FuncElseifs  {FunIf $3 $5 $6}
        | "return" Expression                           {FunRet $2}

Arguments :
        Arguments1    { Arguments $ reverse $1}

Arguments1 :
        Arguments1 "," Expression  {$3 : $1}
        | Expression                 {[$1]}
        | {-empty-}                  {[]}

SubElseifs :
        SubElifs    {SubElseifs $ reverse $1}

SubElifs :
        SubElifs SubElif    {$2 : $1}
        | {-empty-}         {[]}

SubElif :
        "else" "if" "(" Expression ")" SubBody {SubElif $4 $6}

FuncElseifs :
        FuncElifs   {FuncElseifs $ reverse $1}

FuncElifs :
        FuncElifs FuncElif    {$2 : $1}
        | {-empty-}         {[]}

FuncElif :
        "else" "if" "(" Expression ")" FuncBody {FuncElif $4 $6}

VarInit :
        "{" IntArr "}"  {InitArr $ reverse $2}
        | Expression    {InitExpr $1}

IntArr :
       IntArr "," int_lit   {$3 : $1}
       | int_lit            {[$1]}
       | {-empty-}          {[]}

Variable :
        "*" Variable                    {VarDeref $2}
        | identifier "[" Expression "]" {VarIndex $1 $3}
        | identifier                    {Var $1}

DataType :
        "int"       {IntType}
        | "char"      {CharType}
        | "ptr" DataType {PtrType $2}
        | typename  {Typename $1}

Expression :
        Expression "+" Expression {Add $1 $3}
        | Expression "-" Expression {Sub $1 $3}
        | Expression "*" Expression {Mult $1 $3}
        | Expression "/" Expression {Div $1 $3}
        | "-" Expression {Neg $2}
        | "*" Expression {Deref $2}
        | "@" identifier {Addrof $2}
        | Expression "<<" Expression {Shl $1 $3}
        | Expression ">>" Expression {Shr $1 $3}
        | Expression "|" Expression {Bor $1 $3}
        | Expression "&" Expression {Band $1 $3}
        | Expression "^" Expression {Bxor $1 $3}
        | "~" Expression {Bnot $2}
        | "(" Expression ")" {$2}
        | int_lit {IntLit $1}
        | identifier "(" Arguments ")" {FnCall $1 $3}
        | Variable {ExprVar $1}

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

newtype Program = Program [GlobalStatement]
    deriving (Eq, Show)

data GlobalStatement =
    FnDecl String FuncParams DataType
    | Function String FuncParams DataType FuncBody
    | SubDecl String SubParams
    | Subroutine String SubParams SubBody
    | G_VarDecl String DataType
    | G_VarDeclInit String DataType VarInit
    | Typedef String DataType
    | Struct String StructContents
    deriving (Eq, Show)

data StructVal = StructVal DataType String
    deriving (Eq, Show)

newtype StructContents = StructContents [StructVal]
    deriving (Eq, Show)

data FuncParam = FuncParam String DataType
    deriving (Eq, Show)

newtype FuncParams = FuncParams [FuncParam]
    deriving (Eq, Show)

data SubParam =
    ByrefParam String DataType
    | ByvalParam String DataType
    deriving (Eq, Show)

newtype SubParams = SubParams [SubParam]
    deriving (Eq, Show)

data SubStmt =
    SubVarDecl String DataType
    | SubVarDeclInit String DataType VarInit
    | SubCall String Arguments
    | SubAssign Variable Expression
    | SubAsm AsmInstrs
    | SubWhile Expression SubBody
    | SubIfElse Expression SubBody SubElseifs SubBody
    | SubIf Expression SubBody SubElseifs
    deriving (Eq, Show)

newtype AsmInstrs = AsmInstrs [String]
    deriving (Eq, Show)

newtype SubBody = SubBody [SubStmt]
    deriving (Eq, Show)

data FuncStmt =
    FunVarDecl String DataType
    | FunVarDeclInit String DataType VarInit
    | FunAssign Variable Expression
    | FunWhile Expression FuncBody
    | FunIfElse Expression FuncBody FuncElseifs FuncBody
    | FunIf Expression FuncBody FuncElseifs
    | FunRet Expression
    deriving (Eq, Show)

newtype FuncBody = FuncBody [FuncStmt]
    deriving (Eq, Show)

newtype Arguments = Arguments [Expression]
    deriving (Eq, Show)

data SubElif = SubElif Expression SubBody
    deriving (Eq, Show)

newtype SubElseifs = SubElseifs [SubElif]
    deriving (Eq, Show)

data FuncElif = FuncElif Expression FuncBody
    deriving (Eq, Show)

newtype FuncElseifs = FuncElseifs [FuncElif]
    deriving (Eq, Show)

data VarInit =
    InitArr [Int]
    | InitExpr Expression
    deriving (Eq, Show)

data Variable =
    VarDeref Variable
    | VarIndex String Expression
    | Var String
    deriving (Eq, Show)

data DataType =
    IntType
    | CharType
    | PtrType DataType
    | Typename String
    deriving (Eq, Show)

data Expression =
    Add Expression Expression
    | Sub Expression Expression
    | Mult Expression Expression
    | Div Expression Expression
    | Neg Expression
    | Deref Expression
    | Addrof String
    | Shl Expression Expression
    | Shr Expression Expression
    | Bor Expression Expression
    | Band Expression Expression
    | Bxor Expression Expression
    | Bnot Expression
    | IntLit Int
    | FnCall String Arguments
    | ExprVar Variable
    deriving (Eq, Show)

runParser :: IO()
runParser = do
  inStr <- getContents
  let parseTree = parse (alexScanTokens inStr)
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"

}
