module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n =
    case n of
        0 -> "zero"
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        5 -> "five"
        6 -> "six"
        7 -> "seven"
        8 -> "eight"
        9 -> "nine"
        _ -> error "not a digit"

digits :: Int -> [Int]
digits n = reverse (go n)
    where go x
            | next == 0 = digit : []
            | otherwise = digit : (go next)
            where (next, digit) = divMod x 10


wordNumber :: Int -> String
--wordNumber n = concat (intersperse "-" (map digitToWord (digits n)))
wordNumber n = concat $ intersperse "-" $ map digitToWord $ digits n
