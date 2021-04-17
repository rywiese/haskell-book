module Excercises where

-- Multiple choice

-- 1 c

-- 2 b

-- 3 a

-- 4 c

-- 5 b


-- Does it type check

-- 1 no

-- 2 no

-- 3a values of type Mood
-- 3b type error, 9 is not a Mood
-- 3c type error, Mood is not an Ord

-- 4 no, s1 doesn't have enough arguments


-- Given a datatype declaration, what can we do?

-- 1 no

-- 2 yes

-- 3 yes

-- 4 no


-- Match the types

-- 1 no

-- 2 no

-- 3 yes

-- 4 yes

-- 5 yes

-- 6 yes

-- 7 no

-- 8 yes

-- 9 yes

-- 10 yes

-- 11 no


-- Type-Kwon-Do Two: Electric typealoo

-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (f a) == b

-- 2
arith :: Num b
      => (a -> b)
      -> Integer
      -> a
      -> b
arith f i a = f a