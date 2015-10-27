number_to_digits :: Integral x => x -> [x]
number_to_digits 0 = []
number_to_digits x = number_to_digits (x `div` 10) ++ [x `mod` 10]

main =	print $ reverse $ take 10 $ reverse $ number_to_digits $ sum [x ^ x | x <-[1..1000]]


