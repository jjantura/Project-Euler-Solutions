pythagorean_triplet  = [a * b * c | a <- [1..1000], b <- [a+1..1000], c <- [b+1..1000], a + b + c == 1000, a * a + b * b == c * c]
main = do
	print $ pythagorean_triplet
