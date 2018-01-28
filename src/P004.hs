module P004 (
    is_palindrom,
	palindrom_list,
    p004_solution
) where 

import Math

is_palindrom :: Integer -> Bool
is_palindrom x = xs == (reverse xs) 
	where xs = (number_to_digits x)

palindrom_list :: [Integer]
palindrom_list = [ x * y | x <- [100..999], y <- [100..999], is_palindrom (x * y) ]

p004_solution =	show $ maximum (palindrom_list)

