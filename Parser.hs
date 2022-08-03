{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,250) ([41056,624,4,0,0,61440,14675,1,1,16576,1249,10264,156,0,0,0,3072,19988,256,0,0,512,10878,49199,59215,63492,40121,0,96,0,0,5132,32846,49793,12297,14416,1537,9994,64,0,0,0,0,0,0,0,0,0,0,1024,0,49152,0,6144,0,0,768,4997,41056,624,5132,32846,51871,61481,47443,32257,10026,0,0,0,0,0,0,0,3072,19988,0,0,0,0,2566,49191,57664,4,0,9216,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","LambdaTypes","num","var","'+'","'-'","'*'","'^'","'>'","':'","'('","')'","'|'","','","'.'","tybool","tynum","true","false","if","then","else","let","'='","in","%eof"]
        bit_start = st * 29
        bit_end = (st + 1) * 29
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..28]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_17
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (14) = happyShift action_5
action_3 (16) = happyShift action_6
action_3 (18) = happyShift action_21
action_3 (21) = happyShift action_7
action_3 (22) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (29) = happyAccept
action_3 (4) = happyGoto action_16
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (13) = happyShift action_15
action_4 _ = happyReduce_2

action_5 (6) = happyShift action_2
action_5 (7) = happyShift action_4
action_5 (14) = happyShift action_5
action_5 (16) = happyShift action_6
action_5 (21) = happyShift action_7
action_5 (22) = happyShift action_8
action_5 (23) = happyShift action_9
action_5 (26) = happyShift action_10
action_5 (4) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (14) = happyShift action_5
action_6 (16) = happyShift action_6
action_6 (21) = happyShift action_7
action_6 (22) = happyShift action_8
action_6 (23) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (4) = happyGoto action_13
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (14) = happyShift action_5
action_9 (16) = happyShift action_6
action_9 (21) = happyShift action_7
action_9 (22) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (27) = happyShift action_33
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_17
action_12 (9) = happyShift action_18
action_12 (10) = happyShift action_19
action_12 (11) = happyShift action_20
action_12 (14) = happyShift action_5
action_12 (16) = happyShift action_6
action_12 (18) = happyShift action_21
action_12 (21) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (24) = happyShift action_32
action_12 (26) = happyShift action_10
action_12 (4) = happyGoto action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_17
action_13 (9) = happyShift action_18
action_13 (10) = happyShift action_19
action_13 (11) = happyShift action_20
action_13 (14) = happyShift action_5
action_13 (16) = happyShift action_6
action_13 (17) = happyShift action_31
action_13 (18) = happyShift action_21
action_13 (21) = happyShift action_7
action_13 (22) = happyShift action_8
action_13 (23) = happyShift action_9
action_13 (26) = happyShift action_10
action_13 (4) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_17
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (14) = happyShift action_5
action_14 (15) = happyShift action_30
action_14 (16) = happyShift action_6
action_14 (18) = happyShift action_21
action_14 (21) = happyShift action_7
action_14 (22) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (4) = happyGoto action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (19) = happyShift action_28
action_15 (20) = happyShift action_29
action_15 (5) = happyGoto action_27
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_17
action_16 (9) = happyShift action_18
action_16 (10) = happyShift action_19
action_16 (11) = happyShift action_20
action_16 (14) = happyShift action_5
action_16 (16) = happyShift action_6
action_16 (18) = happyShift action_21
action_16 (21) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (23) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (4) = happyGoto action_16
action_16 _ = happyReduce_12

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (14) = happyShift action_5
action_17 (16) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (22) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (4) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (14) = happyShift action_5
action_18 (16) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (4) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (14) = happyShift action_5
action_19 (16) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (22) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (4) = happyGoto action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (14) = happyShift action_5
action_20 (16) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (4) = happyGoto action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_15

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (9) = happyShift action_18
action_23 (10) = happyShift action_19
action_23 (14) = happyShift action_5
action_23 (16) = happyShift action_6
action_23 (18) = happyShift action_21
action_23 (21) = happyShift action_7
action_23 (22) = happyShift action_8
action_23 (26) = happyShift action_10
action_23 (4) = happyGoto action_16
action_23 _ = happyReduce_8

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_17
action_24 (9) = happyShift action_18
action_24 (10) = happyShift action_19
action_24 (11) = happyShift action_20
action_24 (14) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (18) = happyShift action_21
action_24 (21) = happyShift action_7
action_24 (22) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (4) = happyGoto action_16
action_24 _ = happyReduce_7

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_17
action_25 (9) = happyShift action_18
action_25 (10) = happyShift action_19
action_25 (11) = happyShift action_20
action_25 (14) = happyShift action_5
action_25 (16) = happyShift action_6
action_25 (18) = happyShift action_21
action_25 (21) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (4) = happyGoto action_16
action_25 _ = happyReduce_6

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (9) = happyShift action_18
action_26 (10) = happyShift action_19
action_26 (14) = happyShift action_5
action_26 (16) = happyShift action_6
action_26 (18) = happyShift action_21
action_26 (21) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (26) = happyShift action_10
action_26 (4) = happyGoto action_16
action_26 _ = happyReduce_5

action_27 (12) = happyShift action_41
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (19) = happyShift action_39
action_28 (20) = happyShift action_40
action_28 _ = happyReduce_16

action_29 (19) = happyShift action_37
action_29 (20) = happyShift action_38
action_29 _ = happyReduce_17

action_30 _ = happyReduce_9

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (22) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_4
action_32 (14) = happyShift action_5
action_32 (16) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (22) = happyShift action_8
action_32 (23) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_4
action_33 (14) = happyShift action_5
action_33 (16) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (22) = happyShift action_8
action_33 (23) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_17
action_34 (9) = happyShift action_18
action_34 (10) = happyShift action_19
action_34 (11) = happyShift action_20
action_34 (14) = happyShift action_5
action_34 (16) = happyShift action_6
action_34 (18) = happyShift action_21
action_34 (21) = happyShift action_7
action_34 (22) = happyShift action_8
action_34 (23) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (28) = happyShift action_45
action_34 (4) = happyGoto action_16
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_17
action_35 (9) = happyShift action_18
action_35 (10) = happyShift action_19
action_35 (11) = happyShift action_20
action_35 (14) = happyShift action_5
action_35 (16) = happyShift action_6
action_35 (18) = happyShift action_21
action_35 (21) = happyShift action_7
action_35 (22) = happyShift action_8
action_35 (23) = happyShift action_9
action_35 (25) = happyShift action_44
action_35 (26) = happyShift action_10
action_35 (4) = happyGoto action_16
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_17
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_20
action_36 (14) = happyShift action_5
action_36 (16) = happyShift action_43
action_36 (18) = happyShift action_21
action_36 (21) = happyShift action_7
action_36 (22) = happyShift action_8
action_36 (23) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (4) = happyGoto action_16
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_20

action_38 _ = happyReduce_18

action_39 _ = happyReduce_21

action_40 _ = happyReduce_19

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_4
action_41 (14) = happyShift action_5
action_41 (16) = happyShift action_6
action_41 (21) = happyShift action_7
action_41 (22) = happyShift action_8
action_41 (23) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (4) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_17
action_42 (9) = happyShift action_18
action_42 (10) = happyShift action_19
action_42 (11) = happyShift action_20
action_42 (14) = happyShift action_5
action_42 (16) = happyShift action_6
action_42 (18) = happyShift action_21
action_42 (21) = happyShift action_7
action_42 (22) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (4) = happyGoto action_16
action_42 _ = happyReduce_11

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (16) = happyShift action_6
action_43 (21) = happyShift action_7
action_43 (22) = happyShift action_8
action_43 (23) = happyShift action_9
action_43 (26) = happyShift action_10
action_43 (4) = happyGoto action_13
action_43 _ = happyReduce_14

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_4
action_44 (14) = happyShift action_5
action_44 (16) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (22) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (4) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (16) = happyShift action_6
action_45 (21) = happyShift action_7
action_45 (22) = happyShift action_8
action_45 (23) = happyShift action_9
action_45 (26) = happyShift action_10
action_45 (4) = happyGoto action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_4
action_46 (8) = happyShift action_17
action_46 (9) = happyShift action_18
action_46 (10) = happyShift action_19
action_46 (11) = happyShift action_20
action_46 (14) = happyShift action_5
action_46 (16) = happyShift action_6
action_46 (18) = happyShift action_21
action_46 (21) = happyShift action_7
action_46 (22) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (4) = happyGoto action_16
action_46 _ = happyReduce_13

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_17
action_47 (9) = happyShift action_18
action_47 (10) = happyShift action_19
action_47 (11) = happyShift action_20
action_47 (14) = happyShift action_5
action_47 (16) = happyShift action_6
action_47 (18) = happyShift action_21
action_47 (21) = happyShift action_7
action_47 (22) = happyShift action_8
action_47 (23) = happyFail []
action_47 (26) = happyShift action_10
action_47 (4) = happyGoto action_16
action_47 _ = happyReduce_10

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
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 6 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 5 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyTerminal (TkNum happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Proj happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_18 = happySpecReduce_2  5 happyReduction_18
happyReduction_18 _
	_
	 =  HappyAbsSyn5
		 (TFun TNum TNum
	)

happyReduce_19 = happySpecReduce_2  5 happyReduction_19
happyReduction_19 _
	_
	 =  HappyAbsSyn5
		 (TFun TBool TNum
	)

happyReduce_20 = happySpecReduce_2  5 happyReduction_20
happyReduction_20 _
	_
	 =  HappyAbsSyn5
		 (TFun TNum TBool
	)

happyReduce_21 = happySpecReduce_2  5 happyReduction_21
happyReduction_21 _
	_
	 =  HappyAbsSyn5
		 (TFun TBool TBool
	)

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkNum happy_dollar_dollar -> cont 6;
	TkVar happy_dollar_dollar -> cont 7;
	TkAdd -> cont 8;
	TkSub -> cont 9;
	TkMul -> cont 10;
	TkAnd -> cont 11;
	TkApply -> cont 12;
	TkInferTy -> cont 13;
	TkLParen -> cont 14;
	TkRParen -> cont 15;
	TkPair -> cont 16;
	TkSep -> cont 17;
	TkProj -> cont 18;
	TkTyBool -> cont 19;
	TkTyNum -> cont 20;
	TkTrue -> cont 21;
	TkFalse -> cont 22;
	TkIf -> cont 23;
	TkThen -> cont 24;
	TkElse -> cont 25;
	TkLet -> cont 26;
	TkLetEquals -> cont 27;
	TkLetIn -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
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
