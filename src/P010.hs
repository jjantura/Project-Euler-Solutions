module P010 (
	p010_solution
) where

import Data.Numbers.Primes

-- nasty hack, TODO: implement custom function
primes_below_2M = takeWhile (< 2000000) primes

p010_solution = show $ sum primes_below_2M
