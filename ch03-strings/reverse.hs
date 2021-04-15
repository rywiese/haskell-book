module Reverse where

rvrs :: String -> String
rvrs s = concat [awesome, is, curry]
    where
        awesome = drop 9 s
        curry = take 5 s
        is = take 4 $ drop 5 s

main :: IO ()
main = print $ rvrs "Curry is awesome"