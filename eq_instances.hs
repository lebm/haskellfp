{-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-type-defaults -fno-warn-name-shadowing #-}

module EqInstanceEx where
-- data TisAnInteger where = TisAn Integer
data TisAnInteger where
  TisAn :: Integer -> TisAnInteger

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn b) = a == b

x = TisAn 1
y = TisAn 2
z = TisAn 1

-- data TwoIntegers = Two Integer Integer
data TwoIntegers where
  Two :: Integer -> Integer -> TwoIntegers

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = (a == a') && (b == b')

xx = Two 1 2
yy = Two 1 2
zz = Two 1 3

-- data StringOrInt = TisAnInt Int | TisAString String
data StringOrInt where
  TisAnInt :: Int -> StringOrInt
  TisAString :: String -> StringOrInt

instance Eq StringOrInt where
  (==) (TisAnInt si) (TisAnInt si') = si == si'
  (==) (TisAString si) (TisAString si') = si == si'
  (==) _ _ = False

si1 = TisAnInt 1
si2 = TisAnInt 1
si3 = TisAString "abc"
si4 = TisAString "abc"

-- data Pair a = Pair a a
data Pair a where
  Pair :: a -> a -> Pair a

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair a' b') = (a == a') && (b == b')

p  = Pair 1 2
p' = Pair 1 2

-- data Which a = ThisOne a | ThatOne a
data Which a where
  ThisOne :: a -> Which a
  ThatOne :: a -> Which a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne b) = a == b
  (==) (ThisOne a) (ThatOne b) = a == b
  (==) (ThatOne a) (ThatOne b) = a == b
  (==) (ThatOne a) (ThisOne b) = a == b

ti = ThisOne 1
ta = ThatOne 1

-- data EitherOr a b = Hello a | Goodbye b
data EitherOr a b where
  Hello :: a -> EitherOr a b
  Goodbye :: b -> EitherOr a b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello y) = x == y
  (==) (Goodbye x) (Goodbye y) = x == y
  (==) _ _ = False

eo1 = Hello 1
eo2 = Hello 1
eo3 = Goodbye 1
eo4 = Goodbye 1
