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

-- 1 Wahoo is not a function and can't be applied applied to 10.
--   Not possible to fix without knowing what the code was intended to do.
-- 2 No error
-- 3 c and d will fail since 5 can't be applied to 10.
-- This can be fixed by changing `b = a 5` and `d = b 200`
-- 4 Neither of these will compile because b and c are not defined, respectively.


-- Type variable or specific type constructor?

-- 2 fully, concrete, concrete
-- 3 fully, constrained, concrete
-- 4 fully, fully, concrete


-- Write a type signature

-- [a] -> a
-- Ord a => a -> a -> Bool
-- a -> b -> b


-- Given a type, write the function

-- 1
i :: a -> a
i = id

-- 2
c :: a -> b -> a
c x y = x

-- 3 Yes

-- 4
c' :: a -> b -> b
c' x y = y

-- 5
r :: [a] -> [a]
r = reverse

-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co f g x = f (g x)

-- 7
a :: (a -> c) -> a -> a
a _ x = x

-- 8
a' :: (a -> b) -> a -> b
a' f x = f x


-- Type-Kwon-Do

-- 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h i = g (f i)

-- 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w (q a)

--3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

-- 4
munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge xToY yToWz x = fst (yToWz (xToY x))
