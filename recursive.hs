module Recursive where

-- Retorna o n-ésimo número de fibonacci
-- fibonacci :: Integer -> Integer
fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

dividedBy :: (Integral a) => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)

soma :: (Eq a, Num a) => a -> a
soma n = go 0 n
  where
    go s n
      | n == 0 = s
      | otherwise = go (s + n) (n - 1)

mc91 :: (Ord a, Num a) => a -> a
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91 . mc91 $ n + 11
