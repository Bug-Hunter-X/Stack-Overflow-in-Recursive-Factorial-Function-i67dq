The following Haskell code attempts to implement a function that calculates the factorial of a number using recursion. However, it contains a subtle bug that leads to unexpected behavior for certain inputs:

```haskell
factorial :: Integer -> Integer
factorial 0 = 1
factorial n | n < 0 = error "Factorial is not defined for negative numbers"
             | otherwise = n * factorial (n - 1)
```

The bug is related to how the recursive call `factorial (n - 1)` is handled.  For large values of `n`, this recursive approach can lead to a stack overflow exception because the Haskell runtime might not be able to manage the large number of recursive calls efficiently.