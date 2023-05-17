/*:
## Exercise - Functions and Optionals

 If an app asks for a user's age, it may be because the app requires a user to be over a certain age to use some of the services it provides. Write a function called `checkAge` that takes one parameter of type `String`. The function should try to convert this parameter into an `Int` value and then check if the user is over 18 years old. If he/she is old enough, print "Welcome!", otherwise print "Sorry, but you aren't old enough to use our app." If the `String` parameter cannot be converted into an `Int` value, print "Sorry, something went wrong. Can you please re-enter your age?" Call the function and pass in `userInputAge` below as the single parameter. Then call the function and pass in a string that can be converted to an integer.
 */
let userInputAge: String = "34e"

//func checkAge(age: String) -> Int {
//    let newAge = Int(age)
//    if newAge! > 18 {
//        print("Welcome!")
//    } else if newAge! < 18 {
//        print("Sorry, but you aren't old enough to use our app")
//    } else {
//        print("Sorry something went wrong. Can you please re-enter your age?")
//    }
//}

/// return 타입을 Int로만 지정해야하는게 아니네?
func checkAge(age: String) -> Int? { /// > 타입이 어떻게 될지 모르니 Int?로 해야하는건가? 🙋🏻‍♂️
    if let newAge = Int(age) {
        if newAge >= 18 {
            print("Welcome!")
        } else {
            print("Sorry, but you aren't old enough to use our app")
        }
        return newAge
    } else {
        print("Sorry something went wrong. Can you please re-enter your age?")
        return nil
    }
}

checkAge(age: userInputAge)
print(checkAge(age: "20"))

//:  Go back and update your function to return the age as an integer. Will your function always return a value? Make sure your return type accurately reflects this. Call the function and print the return value.
/// if the return type is fixed as an Int, the 'nil' return type breaks the function 🔥 - 이건 물어보기
print(checkAge(age: userInputAge))
print(checkAge(age: "31"))

//:  Imagine you are creating an app for making purchases. Write a function that will take in the name of an item for purchase as a `String` and will return the cost of that item as an optional `Double`. In the body of the function, check to see if the item is in stock by accessing it in the dictionary `stock`. If it is, return the price of the item by accessing it in the dictionary `prices`. If the item is out of stock, return `nil`. Call the function and pass in a `String` that exists in the dictionaries below. Print the return value.
var prices = ["Chips": 2.99, "Donuts": 1.89, "Juice": 3.99, "Apple": 0.50, "Banana": 0.25, "Broccoli": 0.99]
var stock = ["Chips": 4, "Donuts": 0, "Juice": 12, "Apple": 6, "Banana": 6, "Broccoli": 3]

//func makingPurchase(item: String) -> Double? {
//    for items in stock {
//        if let items == item {
//            return
//        }
//    }
//}

// ⭐️⭐️⭐️⭐️⭐️⭐️
func makingPurchase(item: String) -> Double? {
    if let itemStock = stock[item] {    /// Dictionary 속에 들어 있는 Key, value 값이 item인지 어떻게 아는거지?
        if itemStock != 0 { /// 여기는 왜 0이지?
            return prices[item]
        } else {
            return nil
        }
    } else {                /// 이 부분이 허용되는 이유 -> if let itemstock = stock[item]?
        return nil
    }
}

print(makingPurchase(item: "Apple"))
print(makingPurchase(item: "Banana"))

/*:
[Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Food Functions](@next)
 */
