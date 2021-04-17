module Excercises where

-- Variety pack

-- 1a (a, b) -> a
-- 1b [Char], no
-- 1c k1, k3

-- 2
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))


-- Case practice

-- 1
functionC x y =
    case x > y of
        True -> x
        False -> y

-- 2
ifEvenAdd2 n =
    case even n of
        True -> n + 2
        False -> n

-- 3
nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0


-- Artful dodgy

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2

-- 2 11

-- 3 22

-- 4 21

-- 5 12

-- 6 11

-- 7 21

-- 8 21

-- 9 22

-- 10 31

-- 11 23


-- Guard duty

-- 1 always returns `'F'`

-- 2 Still type checks, but doesn't work the same

-- 3 b

-- 4 [a]

-- 5 [a] -> Bool

-- 6 c

-- 7 Num a => a

-- 8 Num a => a -> a


-- Chapter excercises

-- Multiple choice

-- 1 d

-- 2 b

-- 3 d

-- 4 b

-- 5 a


-- Let's write code

-- 1
tensDigit :: Integral a => a -> a
tensDigit x = d
    where (xLast, _) = x `divMod` 10
          d     = xLast `mod` 10

hunsD :: Integral a => a -> a
hunsD x = d
    where xLast = x `div` 10
          d     = tensDigit xLast

-- 2
foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y b =
    case b of
        True -> y
        False -> x

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y b
    | b         = y
    | otherwise = x

-- 3
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
