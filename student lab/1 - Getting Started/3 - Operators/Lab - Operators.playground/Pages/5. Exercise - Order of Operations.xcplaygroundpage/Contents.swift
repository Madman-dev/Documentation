/*:
## Exercise - Order of Operations

 Print out what you think 10 + 2 * 5 evaluates to. Then print out the actual expression (i.e. `print(10 + 2 * 5)`)
 */
print(20)
let calculation = 10 + 2 * 5        // multplication goes first
print(10 + 2 * 5)

//:  In a separate `print` statement, add in the necessary parentheses so that addition takes place before multiplication.
print((10 + 2) * 5)

//:  Print out what you think 4 * 9 - 6 / 2 evaluates to. Then print out the actual expression.
print(33)
print((4 * 9) - (6 / 2))    // parentheses가 매우매우매우 중요하다는 점을 다시 한번 느낀다.
print(4 * 9 - 6 / 2)

//:  In a separate `print` statement, add in the necessary parentheses so that the subtraction is prioritized over the multiplication and division.
print(4 * (9 - 6) / 2)


/*:
[Previous](@previous)  |  page 5 of 8  |  [Next: App Exercise - Complex Fitness Calculations](@next)
 */
