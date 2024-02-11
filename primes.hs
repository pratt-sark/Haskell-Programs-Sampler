-- Program: primes.hs
-- Description: Generates prime numbers up to a given limit.

-- Define a function to generate prime numbers using the Sieve of Eratosthenes algorithm.
primes :: Int -> [Int]
primes n = takeWhile (<= n) [p | p <- [2..], all (\x -> p `mod` x /= 0) [2..floor (sqrt (fromIntegral p))]]

-- Main function to take user input and print prime numbers.
main :: IO ()
main = do
    putStrLn "Enter the limit for prime numbers:"
    limit <- readLn  -- Read user input as an integer.
    putStrLn $ "Prime numbers up to " ++ show limit ++ ":"
    print $ primes limit  -- Print prime numbers up to the limit.
