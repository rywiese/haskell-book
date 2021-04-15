module Excercises where

-- Parenthesization

--1 ((2 + (2 * 3)) - 1)

--2 (((^) 10) $ (1 + 1))

--3 (((2 ^ 2) * (4 ^ 5)) + 1)


-- Equivalent expressions

--1 Yes

--2 Yes

--3 No

--4 No

--5 No


-- More fun with functions

-- z = 7
-- y = z + 8
-- x = y ^ 2
-- waxOn = x * 5

--1 1135, 1135, -1110, 1110

--3 3375

--4
waxOn = x * 5
    where
        z = 7
        y = z + 8
        x = y ^ 2

triple x = x * 3

waxOff x = triple x