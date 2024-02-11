-- Program: webScraper.hs
-- Description: A simple web scraper in Haskell.

import Network.HTTP.Conduit (simpleHttp)
import Text.HTML.TagSoup (parseTags, Tag(TagOpen))

-- Function to extract links from a web page
extractLinks :: String -> [String]
extractLinks url = [link | TagOpen "a" attrs <- parseTags html, (_, link) <- attrs, take 4 link == "http"]
    where html = simpleHttp url

-- Main function to demonstrate web scraping
main :: IO ()
main = do
    let url = "https://example.com"
    putStrLn $ "Extracting links from: " ++ url
    links <- extractLinks url
    putStrLn "Found links:"
    mapM_ putStrLn links
