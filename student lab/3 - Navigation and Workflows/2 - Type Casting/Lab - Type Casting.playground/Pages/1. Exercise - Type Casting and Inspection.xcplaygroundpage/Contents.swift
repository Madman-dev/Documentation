/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
/// 함수는 담을 수 있는데 그저 담을 수 있다, 이 뜻이구나
let myBag: [Any] = ["Glasses", 4, eatFood(), 7.64, "222 Diary", true, false]

//func eatFood() {
//    print("밥먹기")
//}

print(myBag)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
///for로 loop을 돌리고, ⭐️ if let ⭐️으로 binding을 해서 찾아줘야하는점!!!
// 아이템 이름은 하나로 통일하는게 나은건가?
for items in myBag {
    if let numbers = items as? Int {
        print("The Int has a value of \(numbers)")
    } else if let doubles = items as? Double {
        print("The Double has a value of \(doubles)")
    } else if let words = items as? String {
        print("The String has a value of \(words)")
    } //else if let boolean = items as? Bool {  >> 마지막은 if let을 하지 않아도 되네! if 00 is 로 지정을 할 수 있네
    else if items is Bool {
        print("The Boolean has a value of \(items)")  /// Boolean은 하나씩만 가능하구나
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["쯔위": 99, "다현": 150, "모모": false, "정연": 0.5, "지효": "리더"]
print(dictionary.keys)
print(dictionary["쯔위"]!)
//print(dictionary[0.5])    🙋🏻‍♂️ value값으로 부를 수는 없는건가??

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, num) in dictionary {
    if let numbers = num as? Int {
        total += Double(numbers)
    } else if let double = num as? Double {
        total += double
    } else if let string = num as? String { /// 여기는 왜 if let _ = value as? String으로 정리하지???
        total += 1
    } else if let boolean = num as? Bool {
        //if boolean == true {              >>> 최상단은 항상 true인점을 사용해서
        if boolean {                        /// 이렇게 정리가 가능하네
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (_, items) in dictionary {
    if let numbers = items as? Int {
        total2 += Double(numbers)
    } else if let doubles = items as? Double {
        total2 += doubles
    } else if let words = items as? String {
        total2 += Double(words.count)
    }
}

print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
