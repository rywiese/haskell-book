module Database where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
    [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, world!"
    , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
    , DbNumber 9003
    ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate dbItems = [ x | (DbDate x) <- dbItems ]

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber dbItems = [ x | (DbNumber x) <- dbItems ]

-- It seems like there's a better way to do this but I can't figure out how
minUTCTime = (UTCTime (fromGregorian 0 1 1) (secondsToDiffTime 34123))
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = foldr max minUTCTime . filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = foldr (+) 0 . filterDbNumber

avgDb :: [DatabaseItem] -> Double
avgDb dbItems = (fromIntegral (sumDb dbItems)) / (fromIntegral (length (filterDbNumber dbItems)))
