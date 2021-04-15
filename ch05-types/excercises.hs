module Excercises where

-- Type matching

-- 1.a -> 2.c
-- 1.b -> 2.d
-- 1.c -> 2.b
-- 1.d -> 2.a
-- 1.e -> 2.e


-- Type arguments

-- 1 a
-- 2 d
-- 3 d (Note: b could be a double or an int)
-- 4 c
-- 5 a
-- 6 e
-- 7 d
-- 8 a
-- 9 c


-- Parametricity

-- 1 Impossible
-- 2
first :: a -> a -> a
first x y = x

second :: a -> a -> a
second x y = y

secondSecond :: a -> b -> b
secondSecond x y = y


-- Apply Yourself

-- Multiple choice
-- 1 [Char] -> [Char]
-- 2 Fractional a => a -> a
-- 3 Int -> [Char]
-- 4 Int -> Bool
-- 5 Char -> Bool


-- Chapter excercises

-- 1 c
-- 2 a
-- 3 b
-- 4 c

-- Does it compile?
