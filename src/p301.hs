import Data.Bits

bf = length $ filter (\n -> n `xor` 2 * n `xor` 3 * n == 0) $ [1 .. 2 ^ 30 :: Int]

main = do
	print $ bf


