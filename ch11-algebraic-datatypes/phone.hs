module Phone where

import Data.Char
import Data.List
import Data.Maybe

type Digit = Char

type Presses = Int

data Button = Button { digit :: Digit, chars :: [Char] } deriving (Eq, Show)

allChars :: Button -> [Char]
allChars button = chars button ++ [digit button]

data Phone = Phone [Button] deriving (Eq, Show)

phone = Phone [
                Button '1' "",
                Button '2' "abc",
                Button '3' "def",
                Button '4' "ghi",
                Button '5' "jkl",
                Button '6' "mno",
                Button '7' "pqrs",
                Button '8' "tuv",
                Button '9' "wxyz",
                Button '*' "^",
                Button '0' " ",
                Button '#' ".,"]

convo :: [String]
convo =
    ["Wanna play 20 questions",
    "Ya",
    "U 1st haha",
    "Lol OK. Have u ever tasted alcohol",
    "Lol ya",
    "Wow ur cool haha. Ur turn",
    "OK. Do u think I am pretty Lol",
    "Lol ya",
    "Just making sure rofl ur turn"]

findButtonByChar :: Phone -> Char -> Button
findButtonByChar (Phone buttons) char = fromJust (find (\button -> char `elem` (allChars button)) buttons)

charToButtonPresses :: Phone -> Char -> [(Digit, Presses)]
charToButtonPresses phone char =
    if isUpper char
        then (charToButtonPresses phone '^') ++ (charToButtonPresses phone (toLower char))
        else let button = findButtonByChar phone char in
            [(digit button, fromJust (elemIndex char (allChars button)) + 1)]
            

stringToButtonPresses :: Phone -> String -> [(Digit, Presses)]
stringToButtonPresses phone = concat . map (charToButtonPresses phone)

fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps = foldr (\(_, presses) previousPresses -> presses + previousPresses) 0

--mostPopularLetter :: String -> Char
-- this aint right. i've lost info by mapping fingerTaps. this can give me the most popular button, but not letter
mostPopularLetterOld =
    (maximumBy (\(_, p1) (_, p2) -> compare p1 p2)) .
    (map (\list@((d, _):t)  -> (d, (fingerTaps list)))) .
    (groupBy (\(d1, _) (d2, _) -> d1 == d2 )) .
    (sortBy (\(d1, _) (d2, _) -> compare d1 d2 )) .
    (stringToButtonPresses phone)
