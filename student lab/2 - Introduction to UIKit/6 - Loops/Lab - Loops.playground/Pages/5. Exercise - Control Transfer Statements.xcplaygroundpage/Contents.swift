/*:
## Exercise - Control Transfer Statements
 
 Create a for-in loop that will loop through `alphabet`. Inside the loop, print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the `isMultiple(of:)` method on `Int` to only print even indexed characters).
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

///enumerated를 제대로 이해하지 못하고 있다
for (index, character) in alphabet.enumerated() {
    if index.isMultiple(of: 2) == false {
        continue    /// continue는 2의 배수가 아니면 거른다로 표기하기 위해!
    }
    print("\(index): is \(character)")
}


//:  Create a `[String: String]` dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.
let dictionary: [String: String] = ["California" : "Scaramento", "Seoul": "Seoul", "New York": "New York City"]

for (state, capital) in dictionary {
    if state == "Seoul" {
        print("I found my home \(state)!")
        break
    }
    print("\(state) has a capital of \(capital)")
}

/// ⭐️ 다르게 출력되는 이유는 이 친구가 순서대로 출력을 하고 있는게 아니라 랜덤으로 확인을 하고 있기 때문인가보네
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
 */
