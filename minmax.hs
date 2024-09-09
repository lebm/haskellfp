module Main where

import GHC.Int
import GHC.Word

minint8 = minBound :: Int8

maxint8 = maxBound :: Int8

minword8 = minBound :: Word8

maxword8 = maxBound :: Word8

main :: IO ()
main = do
  print minint8
  print maxint8
  print minword8
  print maxword8
