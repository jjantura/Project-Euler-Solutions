sqr x = x * x
sum_of_squares ul = sum [ x * x | x <- [1..ul]]
square_of_sum ul = sqr $ sum [ x | x <- [1..ul]]
difference ul = (square_of_sum ul) - (sum_of_squares ul) 
main = print $ difference 100

