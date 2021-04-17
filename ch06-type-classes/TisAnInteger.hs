module TisAnInteger where

-- 1
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
    (==) a b = a == b

-- 2
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two a b) (Two x y) = a == x && b == y

-- 3
data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt a) (TisAnInt b) = a == b
    (==) (TisAString a) (TisAString b) = a == b
    (==) _ _ = False

-- 4
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair x y) = a == x && b == y

-- 5
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple x y) = a == x && b == y

-- 6
data Which a = ThisOne a | ThatOne a

instance (Eq a) => Eq (Which a) where
    (==) (ThisOne a) (ThisOne b) = a == b
    (==) (ThatOne a) (ThatOne b) = a == b
    (==) _ _ = False

-- 7
data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello b) = a == b
    (==) (Goodbye a) (Goodbye b) = a == b
    (==) _ _ = False