
import Foundation

//class Puppy {
//    var name: String
//    var owner: Person!
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func goOut() {
//        print("\(name)이 \(owner)와 함께 밖으로 나갑니다.")
//    }
//}
//
//let happy: Puppy = Puppy(name: "Happy")
////happy.goOut() 여기서 불가능
////    🔥🙋🏻‍♂️ ㄴ 왜 여기서 실행한 happy.goOut은 nil이라는 값을 출력하지 않았지? >>> ⭐️ owner.name이 빠졌기 때문
//
//
//struct Person {
//    var name: String
//    var pet: Puppy!
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func checkPuppy() {
//        print("\(name)의 동물은 \(pet)입니다.")
//    }
//}
//
//var jack: Person = Person(name: "Jack")
//happy.owner = jack
////jack.pet = happy
//
//happy.goOut()
////jack.checkPuppy()


// MARK: - 추가 궁금


class PersonA {
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}
let jason = PersonA()


class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}
let hana = PersonB(name: "hana", age: 20, nickName: "H")

class PersonC {
    var name: String
    var age: Int
    var nickName: String?           // 초기값이 꼭 필요 없을 때
    
//    init(name: String, age: Int, nickName: String) {
//        self.name = name
//        self.age = age
//        self.nickName = nickName    // 여기서 왜 갑자기 값을 String으로 바꾸지? >>> nickName을 이미 optional로 고정했기에 init에서 추가를 해도 빼도 된다. 지금은 값을 그저 준 것
//    }
    
    /// 중복되는 경우 init을 복붙할 수 있다~
    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age)
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let jenny: PersonC = PersonC(name: "jenny", age: 10)


class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)이 \(owner.name)와 함께 밖으로 나갑니다.")
    }
}

let happy: Puppy = Puppy(name: "happy")
//happy.goOut()             // 출력 불가
happy.owner = jenny
happy.goOut()

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        /// 위 조건들에 부합할 경우, 아래와 같이 초기화
        self.name = name
        self.age = age
    }
}

let john: PersonD? = PersonD(name: "john", age: 30)

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다.")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)    // 임의대로 타입에 값을 바꾸는건가??
donald?.pet = happy
donald = nil

// 아까 출력이 가능했던 이유들과 ?을 사용했을 때 가능했던 코드들을 다시 찾아봐라!
