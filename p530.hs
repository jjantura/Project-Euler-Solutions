-- divisors n = [d | d <- [1..n], n `rem` d == 0]

f n = sum [ gcd d (n `div` d) | d <- [1..n], n `rem` d == 0]
fs k = sum [ f n | n <-[1..k]]

main = do
	print $ fs 100000
