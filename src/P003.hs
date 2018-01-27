module P003 (
  prime_factors,
  p003_solution
) where 

prime_factors :: Integer -> [Integer]
prime_factors n =
  case factors of
    [] -> [n]
    _  -> factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n - 1]

p003_solution :: String
p003_solution = show $ last $ prime_factors 600851475143
