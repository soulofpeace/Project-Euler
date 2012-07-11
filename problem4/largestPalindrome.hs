import Data.List
import Control.Monad
import Control.Applicative

input = reverse [1..1000]

isPalindrome :: Integer -> Bool
isPalindrome x = (show x) == (reverse $ show x)

notPalidrome x = not (isPalindrome x)

main = do 
  putStrLn (head (dropWhile (notPalidrome) (reverse (sort ((*) <$> input <*> input)))))
