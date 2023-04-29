/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for value in 1...100 {
    print(value)
}

//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 

for character in alphabet {
    print(character)
}

for (index, letter) in alphabet.enumerated() {
    print("\(index): 값은 \(letter)")
}

//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
let dictionary: [String: String] = ["South Korea": "Seoul", "California": "Sacremento", "Arizona": "Pheonix"]

for index in dictionary {
    print("Key는 \(index.key)이며 value는 \(index.value)")  /// key와 value 값을 접할 때는 dot syntax?
}


//⭐️ 원래하는 방식은 아래와 같이 하네
for (key, value) in dictionary {        /// for (key, value)의 경우, 읽을 때 바로 이해할 수 있도록 상황에 맞는 텍스트를 작성하는게 좋을 듯하다. state, capital
    print("Key 값은 \(key)이며 value 값은 \(value)이다")
}
/*:
page 1 of 6  |  [Next: App Exercise - Movements](@next)
 */
