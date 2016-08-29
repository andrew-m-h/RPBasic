{-# LANGUAGE Safe #-}
module Main where

import safe Prelude
import Lexer (runLexer)
import Parser (runParser)

main :: IO ()
main = runParser