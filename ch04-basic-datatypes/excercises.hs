module Excercises where

-- Mood swing

--1 Mood
--2 Blah, Woot
--3 Woot is a data constructor, not a type constructor. Needs to be Mood -> Mood
--4 Mood is a type constructor, not a data constructor. Needs to be Blah


-- Find the mistakes

--1 not True && True
--2 not (x == 6) and bind x to something
--3 Okay
--4 ["Merry"] > ["Happy"]
--5 Can't concat lists of different types. Not sure if there's a clear way I'm supposed to fix this


--Chapter excercises

--1 [a] -> Int

--2a 5
--2b 3
--2c 2
--2d 5

--3 Second one fails

--4 6 `div` length [1, 2, 3]

--5 Bool, True

--6 Bool, False

--7a Yes, True
--7b No, array elements not all of same type
--7c Yes, 5
--7d Yes, False
--7e No, 9 is not a Bool

--8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

--9
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else -x

--10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f pair1 pair2 = ((snd pair1, snd pair2), (fst pair1, fst pair2))


-- Correcting syntax

--1
x = (+)
g xs = w `x` 1
    where w = length xs

--2
myId = \x -> x

--3
h (a, b) = a


-- Match the function names to their types

--1 c
--2 b
--3 a
--4 d