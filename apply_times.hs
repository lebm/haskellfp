-- {-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-type-defaults -fno-warn-name-shadowing #-}

module ApplyTimes where

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b
-- applyTimes n f b = (f . applyTimes (n-1) f) b
-- applyTimes n f b = f (applyTimes (n-1) f b)
