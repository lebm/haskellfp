
-- {-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-type-defaults -fno-warn-name-shadowing #-}

module LamnbaTest where

-- Type of m1, m2 and m3: m[123] :: Num a => a -> a -> a -> a
m1 x y z = x * y * z
m2 x y = \z -> x * y * z
m3 x = \y -> \z -> x * y * z

-- Without type signature Type of m4 would be: m4 :: Integer -> Integer -> Integer -> Integer
m4 :: Num a => a -> a -> a -> a 
m4 = \x -> \y -> \z -> x * y * z
