module P005B (
    p005_solution
) where

import Data.List


p005_solution :: String
p005_solution = show $ foldl lcm 1 [2..20] 