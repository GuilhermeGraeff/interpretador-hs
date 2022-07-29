module Main where

import Lexer 
import Parser
import Interpreter
import TypeChecker
 
-- main = getContents >>=  eval . typecheck . parser . lexer 

main = print "ok"