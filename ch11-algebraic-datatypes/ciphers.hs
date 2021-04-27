module Ciphers where

import Data.Char

caesar :: String -> Int -> String
caesar string shift = map (\c -> shiftChar c shift) string

unCaesar :: String -> Int -> String
unCaesar string shift = caesar string (- shift)

vigenere :: String -> String -> String
vigenere string keyword =
    let charsAndShifts = zip string (cycle (map charToShift keyword)) in
        map (uncurry shiftChar) charsAndShifts

shiftChar :: Char -> Int -> Char
shiftChar char shift = chr (((ord char - 65 + shift) `mod` 26) + 65)

charToShift :: Char -> Int
charToShift char = ord char - 65

shiftToChar :: Int -> Char
shiftToChar shift = chr (shift `mod` 26 + 65)
