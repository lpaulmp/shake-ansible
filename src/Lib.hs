module Lib where

import Development.Shake

someFunc :: IO ()
someFunc = putStrLn "someFunc"

m :: IO ()
m =
  shakeArgs shakeOptions (rules ["foo"])

rules :: [String] -> Rules ()
rules files = do
  want files

  "foo" %> \out -> do
    touchFile

touchFile :: Action ()
touchFile = cmd "touch foo"
