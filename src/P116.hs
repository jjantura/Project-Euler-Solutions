module P116 (
    p116_solution
) where

import Math

perms :: Integer -> Integer -> Integer -> Integer
perms n k l = factorial((n - k * l) + k) `div` (factorial(k) * factorial(n - k * l))

all_perms_for_given_len :: Integer -> Integer -> Integer
all_perms_for_given_len n l = sum[perms n i l | i <-[1..n `div` l]]

p116_solution :: String
p116_solution = show $ all_perms_for_given_len 50 2 + all_perms_for_given_len 50 3 + all_perms_for_given_len 50 4

