module P009 (
    pythagorean_triplet,
    p009_solution
) where

pythagorean_triplet :: Integer -> Integer
pythagorean_triplet n = [a * b * c | a <- [1..n], b <- [a+1..n - a], c <- [b+1..n - a - b], a + b + c == n, a * a + b * b == c * c] !! 0
    
p009_solution :: String
p009_solution = show $ pythagorean_triplet 1000


