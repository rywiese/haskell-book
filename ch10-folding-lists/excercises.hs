module Excercises where

-- Understanding folds

-- 1 b, c

-- 3 c

-- 4 a

-- 5
a = foldr (++) "" ["woot", "WOOT", "woot"]
b = foldr max 'a' "fear is the little death"
c = foldr (&&) True [False, True]
d = foldr (||) False [False, True]
e = foldl (flip ((++) . show)) "" [1..5]
f = foldr (flip const) 'a' [1..5]
g = foldl const 0 "tacos"
h = foldr (flip const) 0 "burritos"
i = foldr (flip const) 'z' [1..5]


-- Warm-up and review

-- 1
stops  = "pbtdkg"
vowels = "aeiou"

oneA :: [Char] -> [Char] -> [(Char, Char, Char)]
oneA stops vowels = [ (x, y, z) | x <- stops, y <- vowels, z <- stops]

oneB :: [Char] -> [Char] -> [(Char, Char, Char)]
oneB stops vowels = [ (x, y, z) | x <- stops, y <- vowels, z <- stops, x == 'p']

-- 2 average number of chars per word in x

-- 3 no


-- Rewriting functions using folds

-- 1
myOr :: [Bool] -> Bool
myOr = foldr (||) False

--2
myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\x y ->  f x || y) False

-- 3
myElemFold :: Eq a => a -> [a] -> Bool
myElemFold e = foldr (\x y -> e == x || y) False

myElemAny :: Eq a => a -> [a] -> Bool
myElemAny e = any (\x -> x == e)

-- 4
myReverse :: [a] -> [a]
myReverse = foldr (\a as -> as ++ [a]) []

-- 5
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\a bs -> f a : bs) []

-- 6
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\a bs -> if f a then a : bs else bs) []

-- 7
squish :: [[a]] -> [a]
squish = foldr (\as bs -> as ++ bs) []

-- 8
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\as bs -> f as ++ bs) []

-- 9
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- 10
myMaximumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMaximumBy f as = foldl (\a b -> if f a b == GT then a else b) (head as) as

-- 11
myMinimumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMinimumBy f as = foldl (\a b -> if f a b == LT then a else b) (head as) as
