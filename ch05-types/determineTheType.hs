{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- 1
-- 1a Num a => a
oneA = (* 9) 6
-- 1b Num a => (a, [Char])
oneB = head [(0,"doge"),(1,"kitteh")]
-- 1c (Integer, [Char])
oneC = head [(0 :: Integer ,"doge"),(1,"kitteh")]
-- 1d Bool
oneD = if False then True else False
-- 1e Int
oneE = length [1, 2, 3, 4, 5]
-- 1f Bool
oneF = (length [1, 2, 3, 4]) > (length "TACOCAT")

-- 2 Num a => a
w           = y * 10
    where x = 5
          y = x + 5

-- 3 Num a => b -> a
z y         = y * 10
    where x = 5
          y = x + 5

-- 4 Fractional a => a
f           = 4 / y
    where x = 5
          y = x + 5

-- 5 [Char]
g           = x ++ y ++ z
    where x = "Julie"
          y = " <3 "
          z = "Haskell"