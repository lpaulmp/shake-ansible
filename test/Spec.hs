import Test.Hspec
import System.Directory
import Lib

main :: IO ()
main = hspec $ do
  describe "Foo" $ do
    it "Return a foo file" $ do
      m
      res <- doesFileExist "foo"
      res `shouldBe` True

