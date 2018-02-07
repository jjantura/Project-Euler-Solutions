module P016 (
    p016_solution
) where

import Math

p016_solution = show $ sum $ number_to_digits (2^1000)

