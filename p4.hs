number_to_digits :: Integral x => x -> [x]
number_to_digits 0 = []
number_to_digits x = number_to_digits (x `div` 10) ++ [x `mod` 10]

is_palindrom :: Integer -> Bool
is_palindrom x = xs == (reverse xs) 
	where xs = (number_to_digits x)

palindrom_list :: [Integer]
palindrom_list = [ x * y | x <- [100..999], y <- [100..999], is_palindrom (x * y) ]

main =	print $ maximum (palindrom_list)

