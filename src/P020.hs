module P020 (
    p020_solution
) where

import Math

p020_solution = show $ sum $ number_to_digits $ factorial 100

