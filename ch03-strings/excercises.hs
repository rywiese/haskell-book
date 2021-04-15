-- Scope

--1 Yes

--2 No

--3 No

--4 Yes


-- Syntax errors

--1 Yes (need parentheses around `++`)

--2 Yes (need "" instead of '')

--3 No


-- Reading syntax

--1a Yes
--1b No (++) [1, 2, 3] [4, 5, 6]
--1c Yes
--1d No ["hello" ++ " world"] or "hello" ++ " world"
--1e No "hello" !! 4
--1f Yes
--1g No take 4 "lovely"
--1h Yes

--2a d
--2b c
--2c e
--2d a
--2e b


-- Building functions

--1a
exclaim s = s ++ "!"

--1b
fourthLetter s = s !! 4

--1c
drop9 s = drop 9 s

--3
thirdLetter :: String -> Char
thirdLetter s = s !! 3

--4
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

--5
rvrs :: String -> String
rvrs s = concat [awesome, is, curry]
    where
        awesome = drop 9 s
        curry = take 5 s
        is = take 4 (drop 5 s)