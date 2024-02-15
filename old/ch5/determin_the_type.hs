{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

a = (* 9) 6

b = head [(0, "doge"), (1, "kitten")]

c = if False then True else False

d = length [1, 2, 3, 4, 5]

e = (length [1, 2, 3, 4]) > (length "teste")

x = 5

y = x + 5

w = y * 10

f = 4 / y