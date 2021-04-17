module EnumFromTo where

eftEnum :: (Enum a, Ord a) => a -> a -> [a]
eftEnum start stop
    | start > stop  = []
    | start == stop = [start]
    | otherwise     = start : eftEnum (succ start) stop

eftBool :: Bool -> Bool -> [Bool]
eftBool = eftEnum

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd start stop
    | start > stop  = []
    | start == stop = [start]
    | otherwise     = start : eftOrd (succ start) stop

eftInt :: Int -> Int -> [Int]
eftInt = eftEnum

eftChar :: Char -> Char -> [Char]
eftChar = eftEnum