{

module Parser where
import Lexer

}

%name parser
%tokentype { Token }
%error { parseError }

%token
    num     { TkNum $$    }
    var     { TkVar $$    }
    '+'     { TkAdd       }
    '-'     { TkSub       }
    '*'     { TkMul       }
    '^'     { TkAnd       }
    '>'     { TkApply     }
    ':'     { TkInferTy   }
    '('     { TkLParen    }
    ')'     { TkRParen    }
    '['     { TkLCol      }
    ']'     { TkRCol      }
    '{'     { TkLPair      }
    '}'     { TkRPair      }
    ','     { TkSep       }
    '.'     { TkProj      }
    tybool  { TkTyBool    }
    tynum   { TkTyNum     } 
    true    { TkTrue      }
    false   { TkFalse     }
    if      { TkIf        }
    then    { TkThen      }
    else    { TkElse      }
    let     { TkLet       }
    '='     { TkLetEquals }
    in      { TkLetIn     }


%nonassoc if then else
%left '+' '^'

%% 

Exp     : num                               { Num $1                         }
        | var                               { Var $1                         }
        | true                              { MyTrue                         }
        | false                             { MyFalse                        }
        | Exp '+' Exp                       { Add $1 $3                      }
        | Exp '-' Exp                       { Sub $1 $3                      }
        | Exp '*' Exp                       { Mul $1 $3                      }
        | Exp '^' Exp                       { And $1 $3                      }
        | '[' NTuple ']'                    { Tuple $2                       }
        | '(' Exp ')'                       { Paren $2                       }
        | if Exp then Exp else Exp          { If $2 $4 $6                    }
        | var ':' LambdaTypes '>' Exp       { Lam $1 $3 $5                   }
        | Exp Exp                           { App $1 $2                      }
        | let var '=' Exp in Exp            { Let $2 $4 $6                   }
        | '{' Exp ',' Exp '}'               { Pair $2 $4                     }
        | Exp '.' num                       { Proj $1 $3                     }
        
NTuple  :  Exp                                       { [$1]                  }
        |  Exp ',' NTuple                            { $1 : $3               }

LambdaTypes  : tybool                                { TBool                 }
            | tynum                                  { TNum                  }     
            | tynum tynum                            { TFun TNum TNum        }
            | tybool tynum                           { TFun TBool TNum       }
            | tynum tybool                           { TFun TNum TBool       }
            | tybool tybool                          { TFun TBool TBool      }



{

data Expr = Num   Int
          | MyTrue
          | MyFalse 
          | MyNull 
          | Paren Expr
          | Add   Expr Expr
          | Sub   Expr Expr
          | Mul   Expr Expr
          | And   Expr Expr
          | If    Expr Expr Expr
          | Var   String
          | Lam   String Ty Expr
          | App   Expr Expr
          | Let   String Expr Expr
          | Pair  Expr Expr
          | Proj  Expr Int
          | Tuple [ Expr ]
          deriving Show





parseError :: [Token] -> a
parseError _ = error "Syntax error: sequência de instruções inválidas"

}