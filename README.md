# Haskell Factorial Function Bug

This repository demonstrates a common error in Haskell: stack overflow due to inefficient recursion. The `factorialBug.hs` file contains a recursive implementation of the factorial function which works well for small numbers, but crashes with a stack overflow for larger inputs.

The `factorialSolution.hs` file provides a corrected implementation that avoids the stack overflow by using tail recursion optimization.