/*:
## Exercise - Dictionaries

 Create a variable `[String: Int]` dictionary that can be used to look up the number of days in a particular month. Use a dictionary literal to initialize it with January, February, and March. January contains 31 days, February has 28, and March has 31. Print the dictionary.
 */
/// ⭐️ 여기서 생각을 해야하는건, 타입이 [String: Int]가 아닌 key, value 값으로 collection을 바라볼 필요가 있다!

var numberOfDays: [String: Int] = ["January": 31, "February": 28, "March": 31]  // collection, dictionary를 넣을 때는 배열 속에 값을 넣는 것 - using Commas following the type methods
print(numberOfDays)
//:  Using subscripting syntax to add April to the collection with a value of 30. Print the dictionary.
//numberOfDays.append("April")
numberOfDays["April"] = 30  /// 이렇게 해서 값을 넣는거라고...? Key 값만 넣으면 되는거야? -> append가 아닌게 신기하네
print(numberOfDays)
//:  It's a leap year! Update the number of days in February to 29 using the `updateValue(_:, forKey:)` method. Print the dictionary.
numberOfDays.updateValue(29, forKey: "February")    // key 와 value 값을 그대로 제공해서 변경을 한다~ -> 값을 바꿀 때는 dotsyntax를 사용해야하네
print(numberOfDays)
//:  Use if-let syntax to retrieve the number of days under "January." If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.
//if let numberDays = numberOfDays["January"] {
//    print("January has \(numberDays) in January")
//}

if let januaryDays = numberOfDays["January"] {
    print("January has \(januaryDays) days")
}
//:  Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors." Print the resulting dictionary.
//var shapesArray: [String:[String]] = ["Shapes": ["Circles"]]
//var colorsArray: [String: [String]] = ["Colors":["Red", "Green"]]

let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Black"]

let shapesAndColorArray: [String: [String]] = ["Shapes": shapesArray, "Color": colorsArray] // [String: [String]] 타입은 ["Shapes": shapesArray]여기에 해당이 되는 것! 개별로!
print(shapesAndColorArray)

//:  Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the force unwrap operator to unwrap what is returned from the dictionary before you can access an element of the array.
if let lastElement = shapesAndColorArray["Color"] {
    print(lastElement[2])
}


let lastElements = colorsArray[2] // -> 여기서 값은 dictionary가 아닌 array로만 정리가 되어 있는 친구라는 걸 이해하면 if let syntax로 풀 수 있는 방법은 아닌 점을 이해해라
print(lastElements)

/*:
[Previous](@previous)  |  page 3 of 4  |  [Next: App Exercise - Pacing](@next)
 */
