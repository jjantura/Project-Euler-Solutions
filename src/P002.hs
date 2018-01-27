module P002 (
    fib,
    fib_sum,
    p002_solution
) where

fib :: [Int]
fib = 0 : 1 : zipWith (+) fib (tail fib)

fib_sum :: Int -> Int
fib_sum n = sum [x| x <- takeWhile (< n) fib, even x]

p002_solution :: String
p002_solution = show $ fib_sum 4000000
