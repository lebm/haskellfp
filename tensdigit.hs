module TensDigit where

tensDigit :: (Integral a) => a -> a
tensDigit x = d
  where
    xLast = x `div` 10
    d = xLast `mod` 10

tensDigit' :: (Integral a) => a -> a
tensDigit' x = d
  where
    xLast = x `div` 10
    (a, d) = xLast `divMod` 10
