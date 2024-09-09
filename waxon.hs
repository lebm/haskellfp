module WaxOn where

z = 7

y = z + 8

x = y ^ 2

waxOn = x * 5

waxOn2 = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

waxOn3 = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

triple x = x * 3

waxOff = triple

waxOff2 = triple
