module P006 (
    p006_solution
) where 
    
import Math

sum_of_squares :: Integer -> Integer
sum_of_squares ul = sum [ x * x | x <- [1..ul]]

square_of_sum :: Integer -> Integer
square_of_sum ul = sqr $ sum [ x | x <- [1..ul]]

difference :: Integer -> Integer
difference ul = (square_of_sum ul) - (sum_of_squares ul) 

p006_solution :: String
p006_solution = show $ difference 100

