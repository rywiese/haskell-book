module Ciphers where

import Data.Char

caesar :: String -> Int -> String
caesar string shift =
    case string of
        "" -> ""
        h : t -> caesarChar h shift : caesar t shift
        where caesarChar char shift = chr (((ord char - 97 + shift) `mod` 26) + 97)

unCaesar :: String -> Int -> String
unCaesar string shift = caesar string (- shift)
