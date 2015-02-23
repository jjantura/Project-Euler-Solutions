-- nice but ineffective, problems with stack
fib :: [Int]
fib = 0 : 1 : zipWith (+) fib (tail fib)

fib_sum :: Int -> Int
fib_sum n = sum [x| x <- takeWhile (< n) fib, even x]

main = do 
    print(fib_sum 4000000)
