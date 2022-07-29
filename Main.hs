module Main where

import Lexer 
import Parser
import Interpreter
import TypeChecker
 

main :: IO ()
main = getContents >>=  print . eval . typecheck . parser . lexer 

-- To run use: cat source.jy | runghc Main.hs