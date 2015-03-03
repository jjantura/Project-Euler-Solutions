-- A007318 oeis.org


--factorial n = product[1..n]

--pascal_entry n k = (factorial n) `div` ((factorial k) * (factorial (n - k)))

pascal = iterate (\row -> zipWith (+) ([0] ++ row) (row ++ [0])) [1]
pascal_entry n k = pascal !! n !! k

not_divisible_count n = sum [ 1 | row<-[0..n - 1], col<-[0..row], pascal_entry row col  `mod` 7 /= 0]

main = print $ not_divisible_count 100



