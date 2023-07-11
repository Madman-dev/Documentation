/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    let name: String = "Jack"
    print("Hello, I'm \(name). Nice to meet you")
}
introduceMyself()

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall() {
    let randomNumber = Int.random(in: 0...4)
    
    switch randomNumber {
    case 0: print("\(randomNumber)이 나왔네요!")
    case 1: print("\(randomNumber)이 나왔네요!")
    case 2: print("\(randomNumber)이 나왔네요!")
    case 3: print("\(randomNumber)이 나왔네요!")
    case 4: print("\(randomNumber)이 나왔네요!")
    default: print("에러가 발생했습니다.")
    }
}

magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
