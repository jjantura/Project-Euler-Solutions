pythagorean_triplet n = [a * b * c | a <- [1..n], b <- [a+1..n - a], c <- [b+1..n - a - b], a + b + c == n, a * a + b * b == c * c]
main = do
	print $ pythagorean_triplet 1000
