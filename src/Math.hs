module Math (
    sqr,
    primes,
    number_to_digits
) where 

sqr :: Integer -> Integer
sqr x = x * x

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

number_to_digits :: Integral x => x -> [x]
number_to_digits 0 = []
number_to_digits x = number_to_digits (x `div` 10) ++ [x `mod` 10]
    