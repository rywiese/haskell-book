module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myChunks :: Char -> String -> [String]
myChunks delim sentence =
    case (takeWhile (/=delim) sentence) of
        ""      -> []
        firstWord ->
            let rest = dropWhile (==delim) (dropWhile (/=delim) sentence) in
                firstWord : myLines rest

myLines :: String -> [String]
myLines = myChunks ('\n')

myWords :: String -> [String]
myWords = myChunks ' '


shouldEqual =
    [ "Tyger Tyger, burning bright"
    , "In the forests of the night"
    , "What immortal hand or eye"
    , "Could frame thy fearful symmetry?"
    ]

main :: IO ()
main = print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)