-- Program: sortingAlgorithms.hs
-- Description: Implements various sorting algorithms in Haskell.

-- QuickSort implementation
quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort [y | y <- xs, y <= x] ++ [x] ++ quickSort [y | y <- xs, y > x]

-- MergeSort implementation
mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
    where 
        (left, right) = splitAt (length xs `div` 2) xs
        merge [] ys = ys
        merge xs [] = xs
        merge (x:xs) (y:ys)
            | x <= y    = x : merge xs (y:ys)
            | otherwise = y : merge (x:xs) ys

-- Main function to demonstrate sorting algorithms
main :: IO ()
main = do
    let unsortedList = [5, 2, 9, 1, 6, 3, 8, 4, 7]
    putStrLn "Unsorted List:"
    print unsortedList
    putStrLn "QuickSort:"
    print $ quickSort unsortedList
    putStrLn "MergeSort:"
    print $ mergeSort unsortedList
