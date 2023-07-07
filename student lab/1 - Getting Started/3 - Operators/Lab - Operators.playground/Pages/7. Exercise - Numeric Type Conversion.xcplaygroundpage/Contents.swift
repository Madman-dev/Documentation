/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x: Int = 10
let y: Double = 3.2

//let multipliedAsIntegers = x * y    // Never, Ints are recognized as a different type to Int
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)
//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
let multipliedAsDouble = Double(x) * y
print(multipliedAsDouble)

//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
let isTrue: Bool = Int(multipliedAsDouble) == multipliedAsIntegers
/// No, the types used within Double leads to higher numbers as Int drop the rest out.


/// No, as in Doubles, the values are not dropped down whereas when using Ints, they round down the data making it less precise when calculated
/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
