module Excercises where

import Data.Char
import Data.List
import Data.Maybe

-- Come back and do 11.5?


-- Cardinality

-- 1 1

-- 2 3

-- 3 65536

-- 4 18446744073709551616 == 2 ^ 64

-- 5 2 ^ 8 == 256. 8 bits, each with two possible values (1 or 0), can represent 256 different numbers.


-- Logic goats

-- also skipping this for now


-- Pity the bool

-- 1 4

-- 2 258


-- How does your garden grow

-- skipping


-- Multiple choice

-- 1 a

-- 2 c

-- 3 b

-- 4 c


-- As patterns

-- 1
isSubseqOf :: (Eq a)
           => [a]
           -> [a]
           -> Bool
isSubseqOf [] seq = True
isSubseqOf subseq [] = False
isSubseqOf subseq@(h1:t1) seq@(h2:t2) = if h1 == h2 then isSubseqOf t1 t2 else isSubseqOf subseq t2

-- 2
-- I removed the as pattern when I used the capitalizeWord function from Language excercises
capitalizeWords :: String -> [(String, String)]
capitalizeWords = map (\word -> (word, capitalizeWord word)) . words


-- Language excercises

-- 1
capitalizeWord :: String -> String
capitalizeWord "" = ""
capitalizeWord word@(h:t) = (toUpper h):t

-- 2
capitalizeParagraph :: String -> String
capitalizeParagraph = concat . (map capitalizeWord) . sentences

sentences :: String -> [String]
sentences paragraph =
    let stripFirstSentence sentence paragraph = fromMaybe "" (stripPrefix sentence paragraph) in
        case find (isSuffixOf ". ") (inits paragraph) of
            Just sentence -> sentence:(sentences $ stripFirstSentence sentence paragraph)
            _ -> case find (isSuffixOf ".") (inits paragraph) of
                Just sentence -> sentence:(sentences $ stripFirstSentence sentence paragraph)
                _ -> []
