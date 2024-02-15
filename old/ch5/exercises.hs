module Ch5Exercises where

import Data.List

data Person = Person Bool

-- Person does not have Show instance
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Eq, Show)

settleDown x =
  if x == Woot
    then Blah
    else x

type Subject = String

type Verb = String

type Object = String

data Sentence
  = Sentence Subject Verb Object
  deriving (Eq, Show)

-- Typechecks. Its a partial aplication.
s1 = Sentence "dogs" "drool"

s2 = Sentence "Julie" "loves" "dogs"

data Rocks
  = Rocks String
  deriving (Eq, Show)

data Yeah
  = Yeah Bool
  deriving (Eq, Show)

data Papu
  = Papu Rocks Yeah
  deriving (Eq, Show)

-- Does not typechecks.
-- "chases" is not Rocks, it is String
-- True is not Yeah, it is Bool
-- phew = Papu "chases" True

-- Typechecks. It has Eq instance.
phew = Papu (Rocks "chases") (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- Does not typechecks. It does not have Ord instance.
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-- Too generic. Could be 'a', or "abc".
-- i :: a
i :: Num a => a
i = 1

-- Num does not implemet Fractional
-- f :: Num a => a
f :: Fractional a => a
-- f :: Float
f = 1.0

f' :: RealFrac a => a
f' = 1.0

-- freud :: a -> a
freud :: Ord a => a -> a
freud x = x

data MyData = MyData

md = MyData

-- Needs Ord instance
-- res = freud md

myX = 1 :: Int

sigmund :: Int -> Int
-- sigmund :: a -> a
sigmund x = myX

myY = 1 :: Int

sigmund' :: Int -> Int
-- sigmund' :: Num a => a -> a
sigmund' x = myY

-- jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

-- young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
-- signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)