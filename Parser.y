{

module Parser where
import Lexer

}

%name parser
%tokentype { Token }
%error { parseError }

%token
    num     { TkNum $$  }
    var     { TkVar $$  }
    '+'     { TkAdd     }
    '^'     { TkAnd     }
    '>'     { TkApply   }
    ':'     { TkInferTy }
    '('     { TkLParen  }
    ')'     { TkRParen  }
    tybool  { TkTyBool  }
    tynum   { TkTyNum   } 
    true    { TkTrue    }
    false   { TkFalse   }
    if      { TkIf      }
    then    { TkThen    }
    else    { TkElse    }


%nonassoc if then else
%left '+' '^'

%% 

Exp     : num                               { Num $1                         }
        | var                               { Var $1                         }
        | true                              { MyTrue                         }
        | false                             { MyFalse                        }
        | Exp '+' Exp                       { Add $1 $3                      }
        | Exp '^' Exp                       { And $1 $3                      }
        | '(' Exp ')'                       { Paren $2                       }
        | if Exp then Exp else Exp          { If $2 $4 $6                    }
        | var ':' tybool '>' Exp            { Lam $1 TBool $5                }
        | var ':' tynum '>' Exp             { Lam $1 TNum $5                 }
        | var ':' tynum tynum '>' Exp       { Lam $1 ( TFun TNum TNum ) $6   }
        | var ':' tynum tybool '>' Exp      { Lam $1 ( TFun TNum TBool ) $6  }
        | var ':' tybool tybool '>' Exp     { Lam $1 ( TFun TBool TBool ) $6 }
        | var ':' tybool tynum  '>' Exp     { Lam $1 ( TFun TBool TNum ) $6  }
        | Exp Exp                           { App $1 $2                      }


{

data Expr = Num   Int
          | MyTrue
          | MyFalse 
          | Paren Expr
          | Add   Expr Expr
          | And   Expr Expr
          | If    Expr Expr Expr
          | Var   String
          | Lam   String Ty Expr
          | App   Expr Expr
        --   | Let String Expr Expr
          deriving Show

parseError :: [Token] -> a
parseError _ = error "Syntax error: sequência de instruções inválidas"

}