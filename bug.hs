```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

  let words = ['a','b','c','d','e']
  let sortedWords = sort words
  print sortedWords -- Output: [a,b,c,d,e]

  let mixedList = [1, 'a', 5, 'b', 2]
  let sortedMixedList = sort mixedList
  print sortedMixedList --ERROR
```