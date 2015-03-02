factorial n = product [1..n]

number_to_digits :: Integral x => x -> [x]
number_to_digits 0 = []
number_to_digits x = number_to_digits (x `div` 10) ++ [x `mod` 10]

main =	print $ sum $ number_to_digits $ factorial 100

