-- Program: fibonacci.hs
-- Description: Generates the Fibonacci sequence up to a given limit.

-- Define a function to generate the Fibonacci sequence up to n.
fibonacci :: Int -> [Int]
fibonacci n = takeWhile (<= n) $ 0 : 1 : zipWith (+) fibs (tail fibs)
    where fibs = fibonacci n

-- Main function to take user input and print the Fibonacci sequence.
main :: IO ()
main = do
    putStrLn "Enter the limit for Fibonacci sequence:"
    limit <- readLn  -- Read user input as an integer.
    putStrLn $ "Fibonacci sequence up to " ++ show limit ++ ":"
    print $ fibonacci limit  -- Print the Fibonacci sequence up to the limit.
