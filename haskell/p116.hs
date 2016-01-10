
factorial n = product[1..n]

perms :: Integer->Integer->Integer->Integer
perms n k l = factorial((n - k * l) + k) `div` (factorial(k) * factorial(n - k * l))

all_perms_for_given_len :: Integer->Integer->Integer

all_perms_for_given_len n l = sum[perms n i l | i <-[1..n `div` l]]

p116 = all_perms_for_given_len 50 2 + all_perms_for_given_len 50 3 + all_perms_for_given_len 50 4

main = print $ p116

