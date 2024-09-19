module CeasarCipher where

import Data.Char

shftChar :: Int -> Char -> Char
shftChar n c =
  chr (mod (ord c - base + (n)) 26 + base)
  where
    base = if isUpper c then ord 'A' else ord 'a'

ushftChar :: Int -> Char -> Char
ushftChar n c = shftChar (-n) c

cesarCipher :: Int -> String -> String
cesarCipher n = map (shftChar (n))

cesarUnCipher :: Int -> String -> String
cesarUnCipher n = map (ushftChar n)
