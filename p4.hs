-- problem 4 suboptimal, bruteforce solution
-- todo: switch n_t_d and n_t_d_r into ispalindrom 

number_to_digits :: Integral x => x -> [x]
number_to_digits 0 = []
number_to_digits x = number_to_digits (x `div` 10) ++ [x `mod` 10]

number_to_digits_r :: Integral x => x -> [x]
number_to_digits_r 0 = []
number_to_digits_r x = x `mod` 10 : number_to_digits_r (x `div` 10)

is_palindrom x = number_to_digits x == number_to_digits_r x

palindrom_list :: [Integer]
palindrom_list = [ x * y | x <- [100..999], y <- [100..999], is_palindrom (x * y) ]


main =	print $ maximum (palindrom_list)
