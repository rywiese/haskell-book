module Ciphers where

import Data.Char

caesar :: String -> Int -> String
caesar plaintext shift = map (flip shiftChar shift) plaintext

unCaesar :: String -> Int -> String
unCaesar plaintext shift = caesar plaintext (- shift)

vigenere :: String -> String -> String
vigenere plaintext keyword = map (\(char, offsetChar) -> shiftChar char (charToShift offsetChar) ) (zip plaintext (insertSpacesFromList (cycle keyword) plaintext))

charToShift :: Char -> Int
charToShift char =
    if char `elem` ['A'..'Z'] then
        ord char - ord 'A'
    else if char `elem` ['a'..'z'] then
        ord char - ord 'a'
    else 0

shiftChar :: Char -> Int -> Char
shiftChar char shift =
    let shiftCharWithOffset char shift offset = chr (((ord char - offset + shift) `mod` 26) + offset) in
        if char `elem` ['A'..'Z'] then
            shiftCharWithOffset char shift (ord 'A')
        else if char `elem` ['a'..'z'] then
           shiftCharWithOffset char shift (ord 'a')
        else char

-- Seems like there should be a std lib method to avoid this...
insertSpacesFromList :: String -> String -> String
insertSpacesFromList string1 string2 =
    case string2 of
        "" -> string1
        h2:t2 ->
            case string1 of
                "" -> string1
                h1:t1 ->
                    if h2 == ' ' then
                        ' ':(insertSpacesFromList string1 t2)
                    else
                        h1:(insertSpacesFromList t1 t2)
