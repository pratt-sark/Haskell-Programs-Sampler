-- Program: webServer.hs
-- Description: A simple web server using Yesod in Haskell.

{-# LANGUAGE OverloadedStrings #-}

import Yesod

-- Define a Yesod application
data HelloWorld = HelloWorld

-- Define a route for the homepage
mkYesod "HelloWorld" [parseRoutes|
/ HomeR GET
|]

-- Define handler for the homepage
getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|<h1>Hello, Yesod!</h1>|]

-- Define main function to run the web server
main :: IO ()
main = warp 3000 HelloWorld
