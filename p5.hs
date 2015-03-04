pythagorean_triplet :: [Integer]
pythagorean_triplet = [a * b * c | c<-[1..1000], b<-[1..1000 - c], a<-[1..(1000 - c - b)], a + b + c == 1000, a * a + b * b == c * c] 
main = print $ pythagorean_triplet !! 0


