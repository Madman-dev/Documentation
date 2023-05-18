//: [Previous](@previous)
//MARK: - Type Casting

/*
 1. downCasting만 존재하고 가능한건가? as? as!
    - trying to downcast the value's type into a specific type and store it in a new constant is called conditional cast.
 */

"""
➡️ allClientsAnimals에 Cat, Dog, Bird가 다 있다는 가정하에...
let pets = allClientsAnimals()

for pet in pets {
    if let dog = pet as? Dog {
        walk(dog: Dog)
    } else if cat = pet as? Cat {
        changeLitter(cat: Cat)
    } else if let bird = pet as? Bird {
        cleanCage(bird: bird)
    }
}
"""

"""
➡️  if you know what the return type will be, you can use the as! operator to cast the value.
let alansDog = fetchPet(for: "Alan")
let alansDog = fetchPet(for: "Alan") as! Dog

➡️ 약간의 TMI
어플을 구현할 때 버튼을 누르면 2nd VC가 나타나게 만들고 싶고 기획자 입장에서 확실하다면,
as!를 사용해서 명확하게 type을 줄 수 있다

let secondVC = segue.destination as! SecondViewController
"""

//MARK: - Any

"""
- Swift has 2 special types that can transform into any type
Any & AnyObject

Any can hold any items from Int, Func(), String, Double etc
AnyObject can hold any instance of a Class except structure

➡️ to gain access from items within an array / Any type,
use downcast to specify the type before using.
"
//: [Next](@next)
