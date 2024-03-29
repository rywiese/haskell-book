module Excercises where

import Data.Char

-- Thy fearful symmetry

-- 1
myWords :: String -> [String]
myWords sentence =
    case (takeWhile (/=' ') sentence) of
        ""        -> []
        firstWord ->
            let rest = dropWhile (==' ') (dropWhile (/=' ') sentence) in
                firstWord : myWords rest


-- Comprend thy lists

-- 1
-- [4,16,36,64,100]

-- 2
-- [(1,64),(1,81),(1,100),(4,64),(4,81),(4,100),(9,64),(9,81),(9,100),(16,64),(16,81),(16,100),(25,64),(25,81),(25,100),(36,64),(36,81),(36,100),(49,64),(49,81),(49,100)]

-- 3
-- [(1,64),(1,81),(1,100),(4,64),(4,81)]


-- Square cube
mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- 1
one = [ (x, y) | x <- mySqr, y <- myCube ]

-- 2
two = [ (x, y) | x <- mySqr, y <- myCube, x < 50, y < 50 ]

-- 3
three = length two


-- Filtering

-- 1
-- filter (\x -> x `mod` 3 == 0) [1..30]

-- 2
-- (length . (filter (\x -> x `mod` 3 == 0))) [1..30]

-- 3
myFilter = filter (\word -> not (elem word ["an", "a", "the"])) . words


-- Zipping

-- 1
myZip :: [a] -> [b] -> [(a, b)]
myZip as bs =
    case (as, bs) of
        ([], _) -> []
        (_, []) -> []
        (aHead : aTail, bHead : bTail) -> (aHead, bHead) : myZip aTail bTail

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f as bs =
    case (as, bs) of
        ([], _) -> []
        (_, []) -> []
        (aHead : aTail, bHead : bTail) -> f aHead bHead : myZipWith f aTail bTail

myZipNew :: [a] -> [b] -> [(a, b)]
myZipNew = myZipWith (\x y -> (x, y))


-- Chapter excercises

-- Data.Char
filterUpper :: String -> String
filterUpper = filter isUpper

capitalize :: String -> String
capitalize s =
    case s of
        "" -> ""
        h : t -> toUpper h : t

capitalizeAll :: String -> String
capitalizeAll s =
    case s of
        "" -> ""
        h : t -> toUpper h : capitalizeAll t

capitalFirst :: String -> Char
capitalFirst = toUpper . head


-- Writing your own standard functions

myOr :: [Bool] -> Bool
myOr []       = False
myOr (x : xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f []       = False
myAny f (x : xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem e []       = False
myElem e (x : xs) = e == x || myElem e xs

myElemNew :: Eq a => a -> [a] -> Bool
myElemNew e xs = any (==e) xs

myReverse :: [a] -> [a]
myReverse []       = []
myReverse (x : xs) = concat [(myReverse xs), [x]]

squish :: [[a]] -> [a]
squish []       = []
squish (x : xs) = x ++ (squish xs)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f []       = []
squishMap f (x : xs) = (f x) ++ (squishMap f xs)

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [x]      = x
myMaximumBy f (x : xs) =
    let maxOfRest = myMaximumBy f xs in
        case f x maxOfRest of
            GT -> x
            _  -> maxOfRest

flipOrder :: Ordering -> Ordering
flipOrder LT = GT
flipOrder EQ = EQ
flipOrder GT = LT

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f xs = myMaximumBy (curry (flipOrder . uncurry f)) xs

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare
