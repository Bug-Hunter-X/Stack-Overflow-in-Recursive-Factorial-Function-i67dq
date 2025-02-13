The solution involves rewriting the factorial function to use tail recursion. Tail recursion is a specific form of recursion where the recursive call is the very last operation performed in the function.  This allows the Haskell compiler to optimize the code to avoid creating a new stack frame for each call, thus preventing the stack overflow.

```haskell
factorial :: Integer -> Integer
factorial n = factorialHelper n 1
  where
    factorialHelper 0 acc = acc
    factorialHelper n acc | n < 0 = error "Factorial is not defined for negative numbers"
                         | otherwise = factorialHelper (n - 1) (n * acc)
```

In this corrected version, `factorialHelper` accumulates the result in the `acc` parameter.  The recursive call `factorialHelper (n - 1) (n * acc)` is the last operation, enabling tail call optimization.