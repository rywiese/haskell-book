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
