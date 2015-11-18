toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n = (n `mod` 10) : toDigitsRev (n `div` 10)

revList :: [a] -> [a]
revList [] = []
revList (x : xs) = (revList xs) ++ [x]

toDigits :: Integer -> [Integer]
toDigits n = revList (toDigitsRev n)