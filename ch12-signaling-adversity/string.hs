module String where

import Data.List

notThe :: String -> Maybe String
notThe string = if string == "the" then Nothing else Just string

theWord :: String -> String
theWord word =
    case notThe word of
        Nothing -> "a"
        Just something -> something

replaceThe :: String -> String
replaceThe string =
    let wordList = words string in
        intercalate " " $ map theWord wordList
