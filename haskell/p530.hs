-- divisors n = [d | d <- [1..n], n `rem` d == 0]

f n = sum [ gcd d (n `div` d) | d <- [1..n], n `rem` d == 0]
fs k = sum [ f n | n <-[1..k]]

main = do
	print $ f 1
	print $ f 2
	print $ f 3
	print $ f 4
	print $ f 5
	print $ f 6
	print $ f 8
	print $ f 9
	print $ f 10
