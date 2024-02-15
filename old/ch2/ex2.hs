-- In the where clause the order does not matter.
waxOn = x * 5
  where
    x = y ^ 2
    y = z + 8
    z = 7

triple x = x * 3

-- Its the same as waxOff x  = triple x
waxOff = triple