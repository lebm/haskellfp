module CeasarCipher where

import Data.Char

shftChar :: Int -> Char -> Char
shftChar n c =
  case isUpper c of
    True -> chr (mod (ord c - ord 'A' + (n)) 26 + ord 'A')
    otherwise -> chr (mod (ord c - ord 'a' + (n)) 26 + ord 'a')

ushftChar :: Int -> Char -> Char
ushftChar n c = shftChar (-n) c

cesarCipher :: Int -> String -> String
cesarCipher n = map (shftChar (n))

cesarUnCipher :: Int -> String -> String
cesarUnCipher n = map (ushftChar n)
