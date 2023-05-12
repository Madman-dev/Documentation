import UIKit

//MARK: - Optionals

struct Toddler {
    var name: String
    var monthsOld: Int
    
    /// init?을 통해서 만들어낼 instance의 선택지를 넓혀준다 (if monthsOld is lower than 12 or greater than 36, you don't have to create
    init? (name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}


let jack = Toddler(name: "Jack", monthsOld: 15)
jack?.name
jack    // 타입이 optional이다~ 이말인가?

if let myToddler = jack {   /// optional binding을 하기 위해서, 여기서 instance에 또 다른 variable을 사용해야 되는거야???
    print("내 이름은 \(myToddler.name)이고 \(myToddler.monthsOld) months Old")
} else {
    print("나이가 36개월 이상이네요!")
}




//MARK: - Nested Optionals && Optional Chaining >> Documentation Apple Fundamental
/*
struct Person {
    var age: Int
    var resident: Residence? // String이 아니라 Residence로?
}

struct Residence {
    var address: Address?
}

/// 여기는 왜 BuildingNumber과 apartmentNumber이 String이지?
struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

let address = Address(buildingNumber: "902", streetName: "612", apartmentNumber: "902")
let residence = Residence(address: address)
let steve = Person(age: 31, resident: residence)

/// steve의 거주 아파타 넘버를 알기 위해 찾는 과정이 if let으로 되어 있다면 이렇게 복잡하게 작성이 되어야 한다 (nested optionals, unwrapping)
if let residence = steve.resident {
    if let apartmentAddress = residence.address {
        if let aprtmentNumber = address.apartmentNumber {
            print("steve lives in \(address.apartmentNumber!)")
        }
    }
}

/// optional Chaining을 사용하면 쉽게 찾을 수 있다 - optional 형식으로 정리를 해야하네? >> ?이 없으면 nil로 가정해서 값 출력이 중간에 끊긴다고 한다
if let theApartmentNumber = steve.resident?.address?.apartmentNumber {
    print("steve는 아파트 \(theApartmentNumber)에 살고 있습니다")
}


//MARK: - Optional Chaining as an Alternative to Forced Unwrapping


class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
//let roomCount = john.residence!.numberOfRooms   /// nil이 출력된다 > 에러 발생
/// 에러는 residence에 값이 있으면 없어진다 - roomCount에 Int 값을 willSet으로 적용하면 되는데 - residence 자체에 값이 없기에 항상 에러가 발생할 것
/// 이럴때 어떻게 해야하나?? >>> optional Chaining으로 값을 제공하면 된다!!

if let roomCount = john.residence?.numberOfRooms {
    print("john's residence has a total of \(roomCount)")
} else {
    print("unable to find the number of rooms in john's residence")
}
// 🔥 이 방식은 optional residence 속성을 접근해서 numberOfRooms 값이 있다면 출력하도록 만든다.
// 🔥 residence가 optional인 만큼, 실패할 가능성이 있어 - 반환되는 Int값도 optional이다.
// 🔥 하지만 Residence 자체 값이 없기 때문에 optional Int도 nil의 값을 가진다. ⭐️ 위 방식으로는 아직 numberOfRooms 접근이 불가능했다는 점!
// optional Int는 optional binding을 통해서만 접근이 가능하고 non-optional 속성에 다시 담아야 한다.
/// optional Chaining으로 접근을 하게 된다면, 어떤 속성이든, 타입은 optional 속성을 가진다. ⭐️


/// 아래와 같이 제공하면 nil 값이 사라진다 -> WHY?? >> initializing john.residence as a new instance of 'Residence'.
john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {  // john.residence를 Residence에 담았는데 여전히 optional chaining을 해야하는 이유는 뭐지?
    print("john's residence has a total of \(roomCount)")
} else {
    print("unable to find the number of rooms in john's residence")
}
/// 값을 제공한 이후에는 1이 출력이 된다


//MARK: - Optional Chaining >> 100 days of Swift
/// optional Chaining 테스트

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

/// Optional Chaining을 뜻하는 건 "?." 이부분이다.
let album = albumReleased(year: 2006)?.uppercased()
/// 아래 텍스트는 optional (Taylor Swift)를 출력한다 >>> String?을 반환하도록 정리했으니까
print("The album is \(album)")

/*
 - everything after the Question mark will run, if there is a value before the question mark.
 */


//MARK: - Defining Model Classes for optional chaining

class Person {
    var residence: Residence?
}

class Residence {
    var rooms: [Room] = []                  /// Room instance를 Array로 저장하고 있기 때문에 numberOfRooms를 computed property로 선언했다..? 왜???
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {             /// rooms Array 접근을 돕기 위해 특정 공간에 접근 권한을 주는 subscript 구성
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    
    var address: Address?
}

class Room {
    var name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {              /// address 속성을 확인하고 buildingName 또는 buildingNumber && Street을 전달하는 메서드
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}


/// Accessing Properties through optional Chaining ☝🏻 위에 선언한 값들
// - optional Chaining을 통해 optional 값을 가진 속성에 접근이 가능하다!

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("john's number of rooms are \(roomCount)")
} else {
    print("Still can't find the rooms")
}

// 위 방식은 Person()만 선언했기 때문에 여전히 Residence 타입에는 값이 없다!
/// 🙋🏻‍♂️ 왜 Address에 선언을 할까?
let someAddress = Address()             /// simply creates new instance of 'Address' class and assign to constant someAddress.
someAddress.buildingName = "래미안"
someAddress.buildingNumber = "612"
someAddress.street = "06374"
john.residence?.address = someAddress   /// 🙋🏻‍♂️ 여기가 실패한다 - 여전히 residence는 nil이기 때문
/// ⭐️ someAddress가 Address의 instance로 찍혀나왔지만 - 값을 담거나 메서드에 적용이 되는 유의미한 역할을 하지 않는다


// trying to use function to input value
func createAddress() -> Address {
    print("Function was called")
    
    let someAddress = Address()
    someAddress.buildingNumber = "612"
    someAddress.street = "06374"
    
    return someAddress
}

john.residence?.address = createAddress()   /// 해당 함수도 실행되지 않음을 확인


/// calling methods through optional Chaining
// optional chaining를 사용해서 메서드로 optional value에 값을 전달하고 호출 여부 또한 확인할 수 있다.
// Class Residence에 있는 func printNumberOfRooms() 확인!

/// Optional Chaining을 사용하면 반환되는 값은 무조건 '?' 타입이다.
if john.residence?.printNumberOfRooms() != nil {
    print("the total number of rooms are found")
} else {
    print("still can't find the number of rooms")
}
*/


//MARK: - Edge examples and quiz

/*
 + Optional Chaining is a feature in Swift that allows you to safely access properties, methods, and subscripts of an optional value
   without having to force-unwrap the optional.
 ++ 'nil' 값을 가지고 있는 속성들이 있을 경우 유용하게 사용할 수 있는 구성!

*/

struct Person {
    var name: String
    var address: Address?
}

struct Address {
    var street: String
    var city: String
    var country: String
}

let john = Person(name: "John doe", address: Address(street: "Jagok", city: "Seoul", country: "South Korea"))
let anonymous = Person(name: "Anonymous", address: nil)

/// 1️⃣ accessing property -> optional Chaining을 사용해서 각 이름이 가지고 있는 속성들의 특정 값에 접근할 수 있게 되었다. 단, optional로 돌려 받음 (due to optional Chaining)
//let johnStreet = john.address?.street
if let johnStreet = john.address?.street {      // optional 제거
    print(johnStreet)
}

let anonymousStreet = anonymous.address?.street
print(anonymousStreet)


/// 2️⃣ Calling method ->
func printCity(person: Person) {
    if let city = person.address?.city {
        print("The city is \(city)")
    } else {
        print("city is not found")
    }
}

printCity(person: john)
printCity(person: anonymous)



class Song {
    var title: String
    var artist: String?
    
    init(title: String, artist: String?) {
        self.title = title
        self.artist = artist
    }
    
    func play() {
        if let artist = artist {
            print("Now playing \(title) by \(artist)")  /// 아티스트에 값이 있을 경우 '아티스트'를 활용할 수 있다
        } else {
            print("Now playing \(title)")               /// 아니라면 optional이 아닌 title을 활용해서 출력
        }
    }
}

let firstSong = Song(title: "Shape of You", artist: "Ed Sheeran")
let secondSong = Song(title: "Despacito", artist: nil)

firstSong.play()    /// 출력할 수 있도록 만들었네... 특정 값들이 출력될 수 있도록 설정할 수 있다는 점
secondSong.play()
