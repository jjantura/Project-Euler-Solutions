-- cabal install arithmoi ;)
-- suboptimal
import Math.NumberTheory.Primes.Factorisation
import Math.NumberTheory.Powers.Squares

p211 limit = sum [i | i <- [1..limit - 1], isSquare' (sigma 2 i) == True] 
 
main = do
	print $  p211 64000000
