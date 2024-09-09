module FoldBool where

foldBool :: a -> a -> Bool -> a
foldBool a b cond =
  case cond of
    False -> a
    True -> b

foldBool' :: a -> a -> Bool -> a
foldBool' a b cond
  | not cond = a
  | otherwise = b
