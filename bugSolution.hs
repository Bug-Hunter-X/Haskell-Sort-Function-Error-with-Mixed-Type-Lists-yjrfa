```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

  let words = ['a','b','c','d','e']
  let sortedWords = sort words
  print sortedWords -- Output: [a,b,c,d,e]

  -- Solution 1: Separate sorting based on type
  let ints = filter isNumber mixedList :: [Int]
  let chars = filter isChar mixedList :: [Char]
  let sortedInts = sort ints
  let sortedChars = sort chars
  print sortedInts -- Output: [1,2,5]
  print sortedChars -- Output: [a,b]

  --Solution 2: Custom Sorting Function (if you have custom criteria)
  let mixedList = [1, 'a', 5, 'b', 2, 'c']
  let sortedMixedList = sortOn customSort mixedList
  print sortedMixedList

  where 
    isNumber x = isJust (reads x :: [(Int, String)])
    isChar x = isJust (reads x :: [(Char, String)])
    customSort x =
       case x of
         n@(x::Int) -> (1,n)
         c@(x::Char) -> (0,ord c)
    sortOn f = sortBy (comparing f)
```