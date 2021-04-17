-- Thy fearful symmetry

-- 1
myWords :: String -> [String]
myWords sentence =
    case (takeWhile (/=' ') sentence) of
        ""        -> []
        firstWord ->
            let rest = dropWhile (==' ') (dropWhile (/=' ') sentence) in
                firstWord : myWords rest