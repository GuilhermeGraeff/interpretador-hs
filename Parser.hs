{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,119) ([50224,257,0,0,7247,512,17152,28,0,0,50224,20225,61500,460,768,0,17152,12316,452,0,0,4096,3,49,0,50224,20225,12380,452,16,256,17152,28,1,16,50224,17153,28,0,7235,50224,1,12288,452,12,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","num","var","'+'","'^'","'>'","':'","'('","')'","tybool","tynum","true","false","if","then","else","%eof"]
        bit_start = st * 20
        bit_end = (st + 1) * 20
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..19]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (11) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (5) = happyShift action_2
action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_13
action_3 (8) = happyShift action_14
action_3 (11) = happyShift action_5
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (20) = happyAccept
action_3 (4) = happyGoto action_12
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (10) = happyShift action_11
action_4 _ = happyReduce_2

action_5 (5) = happyShift action_2
action_5 (6) = happyShift action_4
action_5 (11) = happyShift action_5
action_5 (15) = happyShift action_6
action_5 (16) = happyShift action_7
action_5 (17) = happyShift action_8
action_5 (4) = happyGoto action_10
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_3

action_7 _ = happyReduce_4

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (11) = happyShift action_5
action_8 (15) = happyShift action_6
action_8 (16) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (4) = happyGoto action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_2
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_13
action_9 (8) = happyShift action_14
action_9 (11) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (18) = happyShift action_20
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_13
action_10 (8) = happyShift action_14
action_10 (11) = happyShift action_5
action_10 (12) = happyShift action_19
action_10 (15) = happyShift action_6
action_10 (16) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (4) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (13) = happyShift action_17
action_11 (14) = happyShift action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_2
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_13
action_12 (8) = happyShift action_14
action_12 (11) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (4) = happyGoto action_12
action_12 _ = happyReduce_15

action_13 (5) = happyShift action_2
action_13 (6) = happyShift action_4
action_13 (11) = happyShift action_5
action_13 (15) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (4) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (11) = happyShift action_5
action_14 (15) = happyShift action_6
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (11) = happyShift action_5
action_15 (15) = happyShift action_6
action_15 (16) = happyShift action_7
action_15 (4) = happyGoto action_12
action_15 _ = happyReduce_6

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (11) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (4) = happyGoto action_12
action_16 _ = happyReduce_5

action_17 (9) = happyShift action_25
action_17 (13) = happyShift action_26
action_17 (14) = happyShift action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_22
action_18 (13) = happyShift action_23
action_18 (14) = happyShift action_24
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_7

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (11) = happyShift action_5
action_20 (15) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (4) = happyGoto action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_13
action_21 (8) = happyShift action_14
action_21 (11) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (19) = happyShift action_34
action_21 (4) = happyGoto action_12
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (11) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (4) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_31
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (11) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (4) = happyGoto action_30
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_2
action_28 (6) = happyShift action_4
action_28 (11) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (11) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (4) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (5) = happyShift action_2
action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_13
action_30 (8) = happyShift action_14
action_30 (11) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (4) = happyGoto action_12
action_30 _ = happyReduce_9

action_31 (5) = happyShift action_2
action_31 (6) = happyShift action_4
action_31 (11) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (4) = happyGoto action_37
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (5) = happyShift action_2
action_32 (6) = happyShift action_4
action_32 (11) = happyShift action_5
action_32 (15) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (4) = happyGoto action_36
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (5) = happyShift action_2
action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_13
action_33 (8) = happyShift action_14
action_33 (11) = happyShift action_5
action_33 (15) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (4) = happyGoto action_12
action_33 _ = happyReduce_10

action_34 (5) = happyShift action_2
action_34 (6) = happyShift action_4
action_34 (11) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (4) = happyGoto action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (5) = happyShift action_2
action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_13
action_35 (8) = happyShift action_14
action_35 (11) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (17) = happyFail []
action_35 (4) = happyGoto action_12
action_35 _ = happyReduce_8

action_36 (5) = happyShift action_2
action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_13
action_36 (8) = happyShift action_14
action_36 (11) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (4) = happyGoto action_12
action_36 _ = happyReduce_12

action_37 (5) = happyShift action_2
action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_13
action_37 (8) = happyShift action_14
action_37 (11) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (4) = happyGoto action_12
action_37 _ = happyReduce_11

action_38 (5) = happyShift action_2
action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_13
action_38 (8) = happyShift action_14
action_38 (11) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (4) = happyGoto action_12
action_38 _ = happyReduce_13

action_39 (5) = happyShift action_2
action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_13
action_39 (8) = happyShift action_14
action_39 (11) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (16) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (4) = happyGoto action_12
action_39 _ = happyReduce_14

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TkNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TkVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (MyTrue
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (MyFalse
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 TBool happy_var_5
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 5 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 TNum happy_var_5
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TNum TNum ) happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TNum TBool ) happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TBool TBool ) happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TBool TNum ) happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 20 20 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkNum happy_dollar_dollar -> cont 5;
	TkVar happy_dollar_dollar -> cont 6;
	TkAdd -> cont 7;
	TkAnd -> cont 8;
	TkApply -> cont 9;
	TkInferTy -> cont 10;
	TkLParen -> cont 11;
	TkRParen -> cont 12;
	TkTyBool -> cont 13;
	TkTyNum -> cont 14;
	TkTrue -> cont 15;
	TkFalse -> cont 16;
	TkIf -> cont 17;
	TkThen -> cont 18;
	TkElse -> cont 19;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 20 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
