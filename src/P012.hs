module P012 (
    p012_solution
) where

triangleNumber :: Integer -> Integer
triangleNumber n = n * (n + 1) `div` 2

triangleNumbers :: [Integer]
triangleNumbers = map triangleNumber [1..]

divCount :: Integer -> Integer
divCount n = foldl (\a e -> if n `mod` e == 0 then succ a else a) 0 [1..n]

p012_solution :: String
p012_solution = show $ head $ foldr(\e a -> if divCount e > 500 then e:a else a) [] triangleNumbers


