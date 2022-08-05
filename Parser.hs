{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,286) ([16576,9989,128,0,0,0,32256,14634,1,2,6144,57512,12292,49488,24585,33440,19,0,0,0,0,5379,156,4,0,0,1024,43512,1508,21488,2509,42976,5018,0,2,40832,20043,0,768,0,0,3072,28756,6146,57512,12292,49488,24585,33440,16403,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,96,0,192,0,0,0,0,1536,14378,3073,28756,6146,57512,12292,49488,57353,37543,49235,9551,32823,23199,78,0,0,0,0,0,0,0,0,0,0,41056,4994,0,0,0,0,768,39957,1536,14378,1,0,8192,1,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","NTuple","LambdaTypes","num","var","'+'","'-'","'*'","'^'","'>'","':'","'('","')'","'['","']'","'{'","'}'","','","'.'","tybool","tynum","true","false","if","then","else","let","'='","in","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (15) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (25) = happyShift action_8
action_0 (26) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (15) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (19) = happyShift action_7
action_3 (22) = happyShift action_24
action_3 (25) = happyShift action_8
action_3 (26) = happyShift action_9
action_3 (27) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (33) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (14) = happyShift action_18
action_4 _ = happyReduce_2

action_5 (7) = happyShift action_2
action_5 (8) = happyShift action_4
action_5 (15) = happyShift action_5
action_5 (17) = happyShift action_6
action_5 (19) = happyShift action_7
action_5 (25) = happyShift action_8
action_5 (26) = happyShift action_9
action_5 (27) = happyShift action_10
action_5 (30) = happyShift action_11
action_5 (4) = happyGoto action_17
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_4
action_6 (15) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (19) = happyShift action_7
action_6 (25) = happyShift action_8
action_6 (26) = happyShift action_9
action_6 (27) = happyShift action_10
action_6 (30) = happyShift action_11
action_6 (4) = happyGoto action_15
action_6 (5) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_2
action_7 (8) = happyShift action_4
action_7 (15) = happyShift action_5
action_7 (17) = happyShift action_6
action_7 (19) = happyShift action_7
action_7 (25) = happyShift action_8
action_7 (26) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (30) = happyShift action_11
action_7 (4) = happyGoto action_14
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_3

action_9 _ = happyReduce_4

action_10 (7) = happyShift action_2
action_10 (8) = happyShift action_4
action_10 (15) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (19) = happyShift action_7
action_10 (25) = happyShift action_8
action_10 (26) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (31) = happyShift action_38
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_20
action_13 (10) = happyShift action_21
action_13 (11) = happyShift action_22
action_13 (12) = happyShift action_23
action_13 (15) = happyShift action_5
action_13 (17) = happyShift action_6
action_13 (19) = happyShift action_7
action_13 (22) = happyShift action_24
action_13 (25) = happyShift action_8
action_13 (26) = happyShift action_9
action_13 (27) = happyShift action_10
action_13 (28) = happyShift action_37
action_13 (30) = happyShift action_11
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_20
action_14 (10) = happyShift action_21
action_14 (11) = happyShift action_22
action_14 (12) = happyShift action_23
action_14 (15) = happyShift action_5
action_14 (17) = happyShift action_6
action_14 (19) = happyShift action_7
action_14 (21) = happyShift action_36
action_14 (22) = happyShift action_24
action_14 (25) = happyShift action_8
action_14 (26) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (30) = happyShift action_11
action_14 (4) = happyGoto action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_2
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_20
action_15 (10) = happyShift action_21
action_15 (11) = happyShift action_22
action_15 (12) = happyShift action_23
action_15 (15) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (19) = happyShift action_7
action_15 (21) = happyShift action_35
action_15 (22) = happyShift action_24
action_15 (25) = happyShift action_8
action_15 (26) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (30) = happyShift action_11
action_15 (4) = happyGoto action_19
action_15 _ = happyReduce_17

action_16 (18) = happyShift action_34
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_2
action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_22
action_17 (12) = happyShift action_23
action_17 (15) = happyShift action_5
action_17 (16) = happyShift action_33
action_17 (17) = happyShift action_6
action_17 (19) = happyShift action_7
action_17 (22) = happyShift action_24
action_17 (25) = happyShift action_8
action_17 (26) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (30) = happyShift action_11
action_17 (4) = happyGoto action_19
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (23) = happyShift action_31
action_18 (24) = happyShift action_32
action_18 (6) = happyGoto action_30
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_20
action_19 (10) = happyShift action_21
action_19 (11) = happyShift action_22
action_19 (12) = happyShift action_23
action_19 (15) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (19) = happyShift action_7
action_19 (22) = happyShift action_24
action_19 (25) = happyShift action_8
action_19 (26) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_13

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (15) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (19) = happyShift action_7
action_20 (25) = happyShift action_8
action_20 (26) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_2
action_21 (8) = happyShift action_4
action_21 (15) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (19) = happyShift action_7
action_21 (25) = happyShift action_8
action_21 (26) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (4) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (15) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (19) = happyShift action_7
action_22 (25) = happyShift action_8
action_22 (26) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (4) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (15) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (19) = happyShift action_7
action_23 (25) = happyShift action_8
action_23 (26) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (4) = happyGoto action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_16

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (10) = happyShift action_21
action_26 (11) = happyShift action_22
action_26 (15) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (19) = happyShift action_7
action_26 (22) = happyShift action_24
action_26 (25) = happyShift action_8
action_26 (26) = happyShift action_9
action_26 (30) = happyShift action_11
action_26 (4) = happyGoto action_19
action_26 _ = happyReduce_8

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_20
action_27 (10) = happyShift action_21
action_27 (11) = happyShift action_22
action_27 (12) = happyShift action_23
action_27 (15) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (22) = happyShift action_24
action_27 (25) = happyShift action_8
action_27 (26) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (4) = happyGoto action_19
action_27 _ = happyReduce_7

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_20
action_28 (10) = happyShift action_21
action_28 (11) = happyShift action_22
action_28 (12) = happyShift action_23
action_28 (15) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (19) = happyShift action_7
action_28 (22) = happyShift action_24
action_28 (25) = happyShift action_8
action_28 (26) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (4) = happyGoto action_19
action_28 _ = happyReduce_6

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (10) = happyShift action_21
action_29 (11) = happyShift action_22
action_29 (15) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (19) = happyShift action_7
action_29 (22) = happyShift action_24
action_29 (25) = happyShift action_8
action_29 (26) = happyShift action_9
action_29 (30) = happyShift action_11
action_29 (4) = happyGoto action_19
action_29 _ = happyReduce_5

action_30 (13) = happyShift action_47
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (23) = happyShift action_45
action_31 (24) = happyShift action_46
action_31 _ = happyReduce_19

action_32 (23) = happyShift action_43
action_32 (24) = happyShift action_44
action_32 _ = happyReduce_20

action_33 _ = happyReduce_10

action_34 _ = happyReduce_9

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (15) = happyShift action_5
action_35 (17) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (25) = happyShift action_8
action_35 (26) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (4) = happyGoto action_15
action_35 (5) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (15) = happyShift action_5
action_36 (17) = happyShift action_6
action_36 (19) = happyShift action_7
action_36 (25) = happyShift action_8
action_36 (26) = happyShift action_9
action_36 (27) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (4) = happyGoto action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_4
action_37 (15) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (19) = happyShift action_7
action_37 (25) = happyShift action_8
action_37 (26) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (4) = happyGoto action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_4
action_38 (15) = happyShift action_5
action_38 (17) = happyShift action_6
action_38 (19) = happyShift action_7
action_38 (25) = happyShift action_8
action_38 (26) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (4) = happyGoto action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_20
action_39 (10) = happyShift action_21
action_39 (11) = happyShift action_22
action_39 (12) = happyShift action_23
action_39 (15) = happyShift action_5
action_39 (17) = happyShift action_6
action_39 (19) = happyShift action_7
action_39 (22) = happyShift action_24
action_39 (25) = happyShift action_8
action_39 (26) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (30) = happyShift action_11
action_39 (32) = happyShift action_51
action_39 (4) = happyGoto action_19
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_2
action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_20
action_40 (10) = happyShift action_21
action_40 (11) = happyShift action_22
action_40 (12) = happyShift action_23
action_40 (15) = happyShift action_5
action_40 (17) = happyShift action_6
action_40 (19) = happyShift action_7
action_40 (22) = happyShift action_24
action_40 (25) = happyShift action_8
action_40 (26) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (29) = happyShift action_50
action_40 (30) = happyShift action_11
action_40 (4) = happyGoto action_19
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_2
action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_20
action_41 (10) = happyShift action_21
action_41 (11) = happyShift action_22
action_41 (12) = happyShift action_23
action_41 (15) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (19) = happyShift action_7
action_41 (20) = happyShift action_49
action_41 (22) = happyShift action_24
action_41 (25) = happyShift action_8
action_41 (26) = happyShift action_9
action_41 (27) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (4) = happyGoto action_19
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_18

action_43 _ = happyReduce_23

action_44 _ = happyReduce_21

action_45 _ = happyReduce_24

action_46 _ = happyReduce_22

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_4
action_47 (15) = happyShift action_5
action_47 (17) = happyShift action_6
action_47 (19) = happyShift action_7
action_47 (25) = happyShift action_8
action_47 (26) = happyShift action_9
action_47 (27) = happyShift action_10
action_47 (30) = happyShift action_11
action_47 (4) = happyGoto action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_20
action_48 (10) = happyShift action_21
action_48 (11) = happyShift action_22
action_48 (12) = happyShift action_23
action_48 (15) = happyShift action_5
action_48 (17) = happyShift action_6
action_48 (19) = happyShift action_7
action_48 (22) = happyShift action_24
action_48 (25) = happyShift action_8
action_48 (26) = happyShift action_9
action_48 (27) = happyShift action_10
action_48 (30) = happyShift action_11
action_48 (4) = happyGoto action_19
action_48 _ = happyReduce_12

action_49 _ = happyReduce_15

action_50 (7) = happyShift action_2
action_50 (8) = happyShift action_4
action_50 (15) = happyShift action_5
action_50 (17) = happyShift action_6
action_50 (19) = happyShift action_7
action_50 (25) = happyShift action_8
action_50 (26) = happyShift action_9
action_50 (27) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (4) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyShift action_2
action_51 (8) = happyShift action_4
action_51 (15) = happyShift action_5
action_51 (17) = happyShift action_6
action_51 (19) = happyShift action_7
action_51 (25) = happyShift action_8
action_51 (26) = happyShift action_9
action_51 (27) = happyShift action_10
action_51 (30) = happyShift action_11
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_2
action_52 (8) = happyShift action_4
action_52 (9) = happyShift action_20
action_52 (10) = happyShift action_21
action_52 (11) = happyShift action_22
action_52 (12) = happyShift action_23
action_52 (15) = happyShift action_5
action_52 (17) = happyShift action_6
action_52 (19) = happyShift action_7
action_52 (22) = happyShift action_24
action_52 (25) = happyShift action_8
action_52 (26) = happyShift action_9
action_52 (27) = happyShift action_10
action_52 (30) = happyShift action_11
action_52 (4) = happyGoto action_19
action_52 _ = happyReduce_14

action_53 (7) = happyShift action_2
action_53 (8) = happyShift action_4
action_53 (9) = happyShift action_20
action_53 (10) = happyShift action_21
action_53 (11) = happyShift action_22
action_53 (12) = happyShift action_23
action_53 (15) = happyShift action_5
action_53 (17) = happyShift action_6
action_53 (19) = happyShift action_7
action_53 (22) = happyShift action_24
action_53 (25) = happyShift action_8
action_53 (26) = happyShift action_9
action_53 (27) = happyFail []
action_53 (30) = happyShift action_11
action_53 (4) = happyGoto action_19
action_53 _ = happyReduce_11

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
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tuple happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 5 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 5 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyTerminal (TkNum happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Proj happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_20 = happySpecReduce_1  6 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_21 = happySpecReduce_2  6 happyReduction_21
happyReduction_21 _
	_
	 =  HappyAbsSyn6
		 (TFun TNum TNum
	)

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 _
	_
	 =  HappyAbsSyn6
		 (TFun TBool TNum
	)

happyReduce_23 = happySpecReduce_2  6 happyReduction_23
happyReduction_23 _
	_
	 =  HappyAbsSyn6
		 (TFun TNum TBool
	)

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 _
	_
	 =  HappyAbsSyn6
		 (TFun TBool TBool
	)

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkNum happy_dollar_dollar -> cont 7;
	TkVar happy_dollar_dollar -> cont 8;
	TkAdd -> cont 9;
	TkSub -> cont 10;
	TkMul -> cont 11;
	TkAnd -> cont 12;
	TkApply -> cont 13;
	TkInferTy -> cont 14;
	TkLParen -> cont 15;
	TkRParen -> cont 16;
	TkLCol -> cont 17;
	TkRCol -> cont 18;
	TkLPair -> cont 19;
	TkRPair -> cont 20;
	TkSep -> cont 21;
	TkProj -> cont 22;
	TkTyBool -> cont 23;
	TkTyNum -> cont 24;
	TkTrue -> cont 25;
	TkFalse -> cont 26;
	TkIf -> cont 27;
	TkThen -> cont 28;
	TkElse -> cont 29;
	TkLet -> cont 30;
	TkLetEquals -> cont 31;
	TkLetIn -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
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
