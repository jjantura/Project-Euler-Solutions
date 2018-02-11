module P048 (
    p048_solution
) where

import Math
p048_solution = show $ reverse $ take 10 $ reverse $ number_to_digits $ sum [x ^ x | x <-[1..1000]]


