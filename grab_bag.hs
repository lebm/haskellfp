

-- {-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-type-defaults -fno-warn-name-shadowing #-}

module GrabBag where

mTh0 x y z =                   x * y * z
mTh1 x y   = \z ->             x * y * z
mTh2 x     = \y -> \z ->       x * y * z
mTh3       = \x -> \y -> \z -> x * y * z
