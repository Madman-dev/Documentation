/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
//// 2nd try
//struct Computer {
//    var ram: Int
//    var yearManufactured: Int
//
//    init?(ram: Int, yearsManufactured: Int) {
//        if ram > 0, yearManufactured > 1970 && yearsManufactured < 2020 {
//            self.ram = ram
//            self.yearManufactured = yearsManufactured
//        } else {
//            return nil
//        }
//    }
//}

//// 1st try
//struct Computer {
//    var ram: Int
//    var yearManufactured: Int
//
//    /// FAILABLE INITAILIZER
//    init?(ram: Int, yearManufactured: Int) {
//        if ram < 0 && yearManufactured > 1970 || yearManufactured < 2020 {
//            return nil
//        } else {
//            self.ram = ram
//            self.yearManufactured = yearManufactured
//        }
//    }
//}

struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    /// FAILABLE INITAILIZER
    init?(ram: Int, yearManufactured: Int) {
        if ram > 0 && yearManufactured > 1970 && yearManufactured < 2020 {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}


/// failable init을 하기 위해서는 init?을 해야한다!

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
/// 원하는게 뭔지 정확하게 이해하고 작성할 것 - 그냥 마구 적다보니까 발생하는 문제 아니야
let mac = Computer(ram: 16, yearManufactured: 1972)
let micosoft = Computer(ram: 16, yearManufactured: 2022)

//if let computer = mac {
//    print(computer.ram)
//    print(computer.yearManufactured)
//} else {
//    print("error has occurred")
//}
//
//print(mac)
//print(micosoft)


if let computer = mac {
    print(computer.ram)
    print(computer.yearManufactured)
}

if let computer = micosoft {
    print(computer.ram)
    print(computer.yearManufactured)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
