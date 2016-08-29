{
{-# LANGUAGE Trustworthy #-}
module Lexer where

import Prelude
}

%wrapper "basic"

$decdig     = [0-9]
$identstart = [a-z]
$identbody  = [a-zA-Z_'0-9]
$typestart  = [A-Z]
$typebody   = [a-zA-Z_'0-9]

tokens :-
    $white+                     ;
    "//".*                      ;

    "'" $printable "'"          {\s -> T_IntLit $ fromEnum (s !! 1)}
    $decdig+                    {\s -> T_IntLit (read s)}
    [\"] $printable+ \"         {T_StringLit . init . tail}

    "Dim"           {const T_Dim}
    "As"            {const T_As}
    "Function"      {const T_Function}
    "Sub"           {const T_Sub}
    "Declare"       {const T_Declare}
    "ByRef"         {const T_ByRef}
    "Type"          {const T_Type}
    "Struct"        {const T_Struct}
    "Asm"           {const T_Asm}
    "Return"        {const T_Return}

    "Int"           {const T_Int}
    "Char"          {const T_Char}
    "Ptr"           {const T_Ptr}

    "Goto"          {const T_Goto}
    "If"            {const T_If}
    "Else"          {const T_Else}
    "Select"        {const T_Select}
    "Case"          {const T_Case}
    "While"         {const T_While}
    "For"           {const T_For}

    "{"             {const T_LBrace}
    "}"             {const T_RBrace}
    "("             {const T_LParen}
    ")"             {const T_RParen}
    "["             {const T_LSqBrace}
    "]"             {const T_RSqBrace}

    "=="            {const T_EQ}
    "!="            {const T_NE}
    "="             {const T_Assign}
    "or"            {const T_Or}
    "and"           {const T_And}
    "<="            {const T_LE}
    ">="            {const T_GE}
    "<<"            {const T_Shl}
    ">>"            {const T_Shr}
    "<"             {const T_LT}
    ">"             {const T_GT}

    "+"             {const T_Add}
    "-"             {const T_Subtract}
    "*"             {const T_Star}
    "@"             {const T_AddrOf}
    "/"             {const T_Div}

    "|"             {const T_Bor}
    "&"             {const T_Band}
    "~"             {const T_Bnot}
    "^"             {const T_Bxor}
    ";"             {const T_SemiColon}
    ","             {const T_Comma}

    $identstart $identbody* ":" {T_Label . init}
    $identstart $identbody*     {T_Identifier}
    $typestart $typebody*       {T_Typename}

{

data Token =
        T_IntLit  Int
        | T_StringLit String
        | T_Dim
        | T_As
        | T_Function
        | T_Sub
        | T_Declare
        | T_ByRef
        | T_Type
        | T_Struct
        | T_Asm
        | T_Return
        | T_Int
        | T_Char
        | T_Ptr
        | T_Goto
        | T_If
        | T_Else
        | T_Select
        | T_Case
        | T_While
        | T_For
        | T_RBrace
        | T_LBrace
        | T_RParen
        | T_LParen
        | T_LSqBrace
        | T_RSqBrace
        | T_EQ
        | T_NE
        | T_Assign
        | T_Or
        | T_And
        | T_LE
        | T_GE
        | T_Shl
        | T_Shr
        | T_LT
        | T_GT
        | T_Add
        | T_Subtract
        | T_Star
        | T_AddrOf
        | T_Div
        | T_Bor
        | T_Band
        | T_Bnot
        | T_Bxor
        | T_SemiColon
        | T_Colon
        | T_Comma
        | T_Label String
        | T_Identifier String
        | T_Typename String
        deriving (Eq, Show)

runLexer :: IO ()
runLexer = do
  s <- getContents
  print (alexScanTokens s)

}
