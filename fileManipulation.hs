-- Program: fileManipulation.hs
-- Description: Reads from and writes to files using Haskell.

import System.IO

-- Function to read a file and print its contents.
readFileContents :: FilePath -> IO ()
readFileContents filePath = do
    contents <- readFile filePath  -- Read the contents of the file.
    putStrLn $ "Contents of " ++ filePath ++ ":"
    putStrLn contents  -- Print the contents to the console.

-- Function to write to a file.
writeToFile :: FilePath -> String -> IO ()
writeToFile filePath content = do
    writeFile filePath content  -- Write content to the file.
    putStrLn $ "Content written to " ++ filePath

-- Main function to demonstrate file manipulation.
main :: IO ()
main = do
    -- Read from a file and print its contents.
    readFileContents "input.txt"

    -- Write to a file.
    writeToFile "output.txt" "This is some text written to a file."
