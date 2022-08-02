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
happyExpList = Happy_Data_Array.listArray (0,174) ([4144,8231,0,0,32768,14495,32769,0,57862,4,0,0,12288,10000,64,0,0,40833,376,29503,2,24,0,6144,5000,4144,24615,20000,16576,156,0,0,0,0,0,0,25088,0,196,0,49152,40000,33152,312,28991,32266,1762,50188,9,2,1024,24576,20000,4096,0,32,768,625,57862,4,0,34840,12307,10000,0,49152,40000,33152,312,0,18432,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","num","var","'+'","'-'","'*'","'^'","'>'","':'","'('","')'","tybool","tynum","true","false","if","then","else","let","'='","in","%eof"]
        bit_start = st * 25
        bit_end = (st + 1) * 25
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..24]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (5) = happyShift action_2
action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_15
action_3 (8) = happyShift action_16
action_3 (9) = happyShift action_17
action_3 (10) = happyShift action_18
action_3 (13) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (18) = happyShift action_7
action_3 (19) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (25) = happyAccept
action_3 (4) = happyGoto action_14
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_13
action_4 _ = happyReduce_2

action_5 (5) = happyShift action_2
action_5 (6) = happyShift action_4
action_5 (13) = happyShift action_5
action_5 (17) = happyShift action_6
action_5 (18) = happyShift action_7
action_5 (19) = happyShift action_8
action_5 (22) = happyShift action_9
action_5 (4) = happyGoto action_12
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_3

action_7 _ = happyReduce_4

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (17) = happyShift action_6
action_8 (18) = happyShift action_7
action_8 (19) = happyShift action_8
action_8 (22) = happyShift action_9
action_8 (4) = happyGoto action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_2
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_15
action_11 (8) = happyShift action_16
action_11 (9) = happyShift action_17
action_11 (10) = happyShift action_18
action_11 (13) = happyShift action_5
action_11 (17) = happyShift action_6
action_11 (18) = happyShift action_7
action_11 (19) = happyShift action_8
action_11 (20) = happyShift action_26
action_11 (22) = happyShift action_9
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_2
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_15
action_12 (8) = happyShift action_16
action_12 (9) = happyShift action_17
action_12 (10) = happyShift action_18
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_25
action_12 (17) = happyShift action_6
action_12 (18) = happyShift action_7
action_12 (19) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (4) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_23
action_13 (16) = happyShift action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_15
action_14 (8) = happyShift action_16
action_14 (9) = happyShift action_17
action_14 (10) = happyShift action_18
action_14 (13) = happyShift action_5
action_14 (17) = happyShift action_6
action_14 (18) = happyShift action_7
action_14 (19) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (4) = happyGoto action_14
action_14 _ = happyReduce_17

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (18) = happyShift action_7
action_15 (19) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (4) = happyGoto action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (18) = happyShift action_7
action_16 (19) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (4) = happyGoto action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (13) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (18) = happyShift action_7
action_17 (19) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (4) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (18) = happyShift action_7
action_18 (19) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (8) = happyShift action_16
action_19 (9) = happyShift action_17
action_19 (13) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (18) = happyShift action_7
action_19 (22) = happyShift action_9
action_19 (4) = happyGoto action_14
action_19 _ = happyReduce_8

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_15
action_20 (8) = happyShift action_16
action_20 (9) = happyShift action_17
action_20 (10) = happyShift action_18
action_20 (13) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (19) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (4) = happyGoto action_14
action_20 _ = happyReduce_7

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_15
action_21 (8) = happyShift action_16
action_21 (9) = happyShift action_17
action_21 (10) = happyShift action_18
action_21 (13) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (4) = happyGoto action_14
action_21 _ = happyReduce_6

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (8) = happyShift action_16
action_22 (9) = happyShift action_17
action_22 (13) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (22) = happyShift action_9
action_22 (4) = happyGoto action_14
action_22 _ = happyReduce_5

action_23 (11) = happyShift action_33
action_23 (15) = happyShift action_34
action_23 (16) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_30
action_24 (15) = happyShift action_31
action_24 (16) = happyShift action_32
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_9

action_26 (5) = happyShift action_2
action_26 (6) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (18) = happyShift action_7
action_26 (19) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (4) = happyGoto action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_2
action_27 (6) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (19) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (4) = happyGoto action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_2
action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_15
action_28 (8) = happyShift action_16
action_28 (9) = happyShift action_17
action_28 (10) = happyShift action_18
action_28 (13) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (18) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (24) = happyShift action_43
action_28 (4) = happyGoto action_14
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_15
action_29 (8) = happyShift action_16
action_29 (9) = happyShift action_17
action_29 (10) = happyShift action_18
action_29 (13) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (18) = happyShift action_7
action_29 (19) = happyShift action_8
action_29 (21) = happyShift action_42
action_29 (22) = happyShift action_9
action_29 (4) = happyGoto action_14
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (5) = happyShift action_2
action_30 (6) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (18) = happyShift action_7
action_30 (19) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (4) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (5) = happyShift action_2
action_33 (6) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (17) = happyShift action_6
action_33 (18) = happyShift action_7
action_33 (19) = happyShift action_8
action_33 (22) = happyShift action_9
action_33 (4) = happyGoto action_38
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (5) = happyShift action_2
action_36 (6) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (17) = happyShift action_6
action_36 (18) = happyShift action_7
action_36 (19) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (4) = happyGoto action_49
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (5) = happyShift action_2
action_37 (6) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (18) = happyShift action_7
action_37 (19) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (4) = happyGoto action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (5) = happyShift action_2
action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_15
action_38 (8) = happyShift action_16
action_38 (9) = happyShift action_17
action_38 (10) = happyShift action_18
action_38 (13) = happyShift action_5
action_38 (17) = happyShift action_6
action_38 (18) = happyShift action_7
action_38 (19) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (4) = happyGoto action_14
action_38 _ = happyReduce_11

action_39 (5) = happyShift action_2
action_39 (6) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (17) = happyShift action_6
action_39 (18) = happyShift action_7
action_39 (19) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (4) = happyGoto action_47
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (5) = happyShift action_2
action_40 (6) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (18) = happyShift action_7
action_40 (19) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (4) = happyGoto action_46
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (5) = happyShift action_2
action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_15
action_41 (8) = happyShift action_16
action_41 (9) = happyShift action_17
action_41 (10) = happyShift action_18
action_41 (13) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (18) = happyShift action_7
action_41 (19) = happyShift action_8
action_41 (22) = happyShift action_9
action_41 (4) = happyGoto action_14
action_41 _ = happyReduce_12

action_42 (5) = happyShift action_2
action_42 (6) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (18) = happyShift action_7
action_42 (19) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (4) = happyGoto action_45
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (5) = happyShift action_2
action_43 (6) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (17) = happyShift action_6
action_43 (18) = happyShift action_7
action_43 (19) = happyShift action_8
action_43 (22) = happyShift action_9
action_43 (4) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (5) = happyShift action_2
action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_15
action_44 (8) = happyShift action_16
action_44 (9) = happyShift action_17
action_44 (10) = happyShift action_18
action_44 (13) = happyShift action_5
action_44 (17) = happyShift action_6
action_44 (18) = happyShift action_7
action_44 (19) = happyShift action_8
action_44 (22) = happyShift action_9
action_44 (4) = happyGoto action_14
action_44 _ = happyReduce_18

action_45 (5) = happyShift action_2
action_45 (6) = happyShift action_4
action_45 (7) = happyShift action_15
action_45 (8) = happyShift action_16
action_45 (9) = happyShift action_17
action_45 (10) = happyShift action_18
action_45 (13) = happyShift action_5
action_45 (17) = happyShift action_6
action_45 (18) = happyShift action_7
action_45 (19) = happyFail []
action_45 (22) = happyShift action_9
action_45 (4) = happyGoto action_14
action_45 _ = happyReduce_10

action_46 (5) = happyShift action_2
action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_15
action_46 (8) = happyShift action_16
action_46 (9) = happyShift action_17
action_46 (10) = happyShift action_18
action_46 (13) = happyShift action_5
action_46 (17) = happyShift action_6
action_46 (18) = happyShift action_7
action_46 (19) = happyShift action_8
action_46 (22) = happyShift action_9
action_46 (4) = happyGoto action_14
action_46 _ = happyReduce_14

action_47 (5) = happyShift action_2
action_47 (6) = happyShift action_4
action_47 (7) = happyShift action_15
action_47 (8) = happyShift action_16
action_47 (9) = happyShift action_17
action_47 (10) = happyShift action_18
action_47 (13) = happyShift action_5
action_47 (17) = happyShift action_6
action_47 (18) = happyShift action_7
action_47 (19) = happyShift action_8
action_47 (22) = happyShift action_9
action_47 (4) = happyGoto action_14
action_47 _ = happyReduce_13

action_48 (5) = happyShift action_2
action_48 (6) = happyShift action_4
action_48 (7) = happyShift action_15
action_48 (8) = happyShift action_16
action_48 (9) = happyShift action_17
action_48 (10) = happyShift action_18
action_48 (13) = happyShift action_5
action_48 (17) = happyShift action_6
action_48 (18) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (22) = happyShift action_9
action_48 (4) = happyGoto action_14
action_48 _ = happyReduce_15

action_49 (5) = happyShift action_2
action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_15
action_49 (8) = happyShift action_16
action_49 (9) = happyShift action_17
action_49 (10) = happyShift action_18
action_49 (13) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (18) = happyShift action_7
action_49 (19) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (4) = happyGoto action_14
action_49 _ = happyReduce_16

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
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 TBool happy_var_5
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 5 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 TNum happy_var_5
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
		 (Lam happy_var_1 ( TFun TNum TNum ) happy_var_6
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
		 (Lam happy_var_1 ( TFun TNum TBool ) happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TBool TBool ) happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 ( TFun TBool TNum ) happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 25 25 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkNum happy_dollar_dollar -> cont 5;
	TkVar happy_dollar_dollar -> cont 6;
	TkAdd -> cont 7;
	TkSub -> cont 8;
	TkMul -> cont 9;
	TkAnd -> cont 10;
	TkApply -> cont 11;
	TkInferTy -> cont 12;
	TkLParen -> cont 13;
	TkRParen -> cont 14;
	TkTyBool -> cont 15;
	TkTyNum -> cont 16;
	TkTrue -> cont 17;
	TkFalse -> cont 18;
	TkIf -> cont 19;
	TkThen -> cont 20;
	TkElse -> cont 21;
	TkLet -> cont 22;
	TkLetEquals -> cont 23;
	TkLetIn -> cont 24;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 25 tk tks = happyError' (tks, explist)
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
