-- Review of types

-- 1 d

-- 2 c

-- 3 d

-- 4 b


-- Reviewing currying

-- 1 "whoops mrow woohoo!"

-- 2 "1 mrow haha"

-- 3 "whoops mrow 2 mrow haha"

-- 4 "whoops mrow blue mrow haha"


-- Recursion

-- 2
oneToN :: (Eq a, Num a) => a -> a
oneToN n = if n == 1 then 1 else n + oneToN (n - 1)

mult :: (Integral a) => a -> a -> a
mult x y = go 0 0
    where go sum count
            | count == y = sum
            | otherwise  = go (sum + x) (count + 1)

-- McCarthy 91 function
mc91 :: (Ord n, Num n) => n -> n
mc91 91 = undefined
mc91 n
    | n > 100   = n - 10
    | otherwise = mc91 (mc91 (n + 11))
