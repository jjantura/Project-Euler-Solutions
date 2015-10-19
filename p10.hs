import Data.Numbers.Primes

primes_below_2M = takeWhile (< 2000000) primes

main = do
	print $ sum primes_below_2M
