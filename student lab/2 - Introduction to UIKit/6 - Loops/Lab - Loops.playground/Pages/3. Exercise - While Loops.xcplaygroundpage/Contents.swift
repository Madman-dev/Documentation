import Foundation
/*:
## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int.random(in: 1...6)` to generate a random number between 1 and 6).
 */
var roll = 0
//var side = Int.random(in: 1...6) -> 이건 왜 안될까?

while Int.random(in: 1...6) != 1 {
    roll += 1
    RETURN
}
print("The dice was rolled \(roll) times to roll 1")

/*:
[Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Running Cadence](@next)
 */
