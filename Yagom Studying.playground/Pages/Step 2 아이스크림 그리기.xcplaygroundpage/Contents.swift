import Foundation

func printIceCream(topping: String) {
    for _ in 1...8 {
        for _ in 1...11 {
            print("\(topping)", terminator: "")
        }
        print()
    }
}
printIceCream(topping: "*")

func printHandle(draw: String) {
    for _ in 1...4 {
        print("\(draw)")
    }
}

printHandle(draw: "    | |    ")


//for i in 1...10 {
//    for _ in 1...i {
//        print("*", terminator: "")
//    }
//    print()
//}
