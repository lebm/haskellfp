

-- {-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-type-defaults -fno-warn-name-shadowing #-}

module AnonymousExercise where

addOneIfOdd n =
  case odd n of
    True -> f n
    False -> n
    where f = \n -> (+ 1) n

addFive = \x -> \y -> (if x > y then y else x) + 5

mflip f x y = f y x
