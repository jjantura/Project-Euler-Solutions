module P005 (
    divisible_by_range,
    p005_solution
) where

divisible_by_range :: Integer -> Integer -> Integer -> Bool
divisible_by_range ll ul n = foldl (\a e -> if n `mod`e  == 0 then True && a else False ) True [ll..ul]

p005_solution :: String
p005_solution = show $ head $ filter (divisible_by_range 3 20) [1..] 