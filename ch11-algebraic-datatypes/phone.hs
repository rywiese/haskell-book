module Phone where

type Digit = Char

type Presses = Int

data Button = Key { digit :: Digit, chars :: [Char]}

data DaPhone = DaPhone [Button]

phone = DaPhone [
    Key '1' "",
    Key '2' "abc",
    Key '3' "def",
    Key '4' "ghi",
    Key '5' "jkl",
    Key '6' "mno",
    Key '7' "pqrs",
    Key '8' "tuv",
    Key '9' "wxyz",
    Key '*' "^",
    Key '0' " ",
    Key '#' ".,",
]

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
