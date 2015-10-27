-- A007318 oeis.org


--factorial n = product[1..n]

--pascal_entry n k = (factorial n) `div` ((factorial k) * (factorial (n - k)))

pascal = iterate (\row -> zipWith (+) ([0] ++ row) (row ++ [0])) [1]
pascal_entry n k = pascal !! n !! k

choose :: (Integral a) => a -> a -> a
choose n k = foldl (\z i -> (z * (n - i + 1)) `div` i) 1 [1..k]

coeffs = iterate next [1] 
  where
    next ns = zipWith (+) (0:ns) $ ns ++ [0]

not_divisible_count n = sum [ 1 | row<-[0..n - 1], col<-[0..row], coeffs !! row !! col  `mod` 7 /= 0]

main = print $ not_divisible_count 10000



