-- Program: guiApplication.hs
-- Description: A simple GUI application using GTK+ in Haskell.

import Graphics.UI.Gtk

-- Define the main function
main :: IO ()
main = do
    -- Initialize GTK
    void initGUI

    -- Create a new window
    window <- windowNew
    set window [windowTitle := "GTK+ Hello World", windowDefaultWidth := 400, windowDefaultHeight := 300]

    -- Create a label widget
    label <- labelNew (Just "Hello, GTK+!")
    containerAdd window label

    -- Connect the "destroy" event of the window to mainQuit
    onDestroy window mainQuit

    -- Show all widgets
    widgetShowAll window

    -- Run the GTK main loop
    mainGUI
