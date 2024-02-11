-- Program: apiClient.hs
-- Description: A simple API client in Haskell.

import Network.HTTP.Simple (httpJSON, getResponseBody)
import Data.Aeson (FromJSON)

-- Define a data type to represent the response from the API
data Post = Post { userId :: Int, id :: Int, title :: String, body :: String } deriving (Show)

-- Function to fetch posts from a JSONPlaceholder API
fetchPosts :: IO [Post]
fetchPosts = do
    response <- httpJSON "https://jsonplaceholder.typicode.com/posts"
    return $ getResponseBody response

-- Main function to demonstrate API client
main :: IO ()
main = do
    putStrLn "Fetching posts from JSONPlaceholder API..."
    posts <- fetchPosts
    putStrLn "Posts fetched:"
    print posts
