//: [Previous](@previous)

import Foundation

struct Cat {
    var name: String?
    var vaccinated = false
    
    func makeSound() {
        print("Meow")
    }
}

/// 초기화하는거구나
var possibleCat: Cat? = Cat()

if let cat = possibleCat {
    cat.makeSound()
}

/* 아래 코드에서 cat의 이름을 선언하거나 변경할 수 없는 이유는 이미 let으로 선언이 되어 있기 때문.
 + struct는 value type인데 - class type과 다르게 새로운 값에서 값을 변경하지 않는 이상 바꿀 수 없다.
 
 class type은 값 타입이 아니라 참조 타입이기 때문에 값을 변경할 수 있다.
*/
/// 아래 코드 안됨!
//if let cat = possibleCat {
//    cat.name = "Bella"
//}



//MARK: - What is optional Binding

class CatClass {
    var name: String?
    
    init(name: String? = nil) {
        self.name = name
    }
}

/*
 우리가 새로운 값을 위 optional Class에 선언을 하면 CatClass 값을 변경하는게 아니라
 새로 찍혀나온 값을 바꾸는 것이다. 기존 메모리는 참조하기 때문에 변동되는 것이 아님!
 */

var possibleCatClass: CatClass? = CatClass()

if let catClass = possibleCatClass {
    catClass.name = "변경"
}

/// 이렇게는 선언 불가
//if let catClass = possibleCatClass {
//    catClass = CatClass()
//}


if var cat = possibleCat {
    cat.name = "Bella"
}

// 아래와 같이 변동 불가 - scope를 벗어날 수 없음
//cat.name = "whiskers"



//MARK: - multiple Optional Binding

possibleCat = Cat(name: "이렇게 선언")

/// 이렇게도 optional binding이 가능하고
//if let cat = possibleCat {  // first to unwrap the optional String
//    if let name = cat.name {    // then to unwrap the optional String
//        print(name)
//    }
//}

/// 이렇게도 가능하고! (more readable)
if let cat = possibleCat, let name = cat.name {
    print(name)
}

/*
 - 어디에 중점을 둘것인지에 따라서 사용 용도 및 중요도가 달라진다.
 1. 최종 출력물에 중점을 둘것인지
 2. 첫번째 optional binding이 통과되는지 확인
 */

/// 예시
func checkForPossibleNamedCat(_ possibleCat: Cat?) {
    if let cat = possibleCat, let name = cat.name {
        print("we found the cat named \(name)")
    } else {
        print("we did not find a cat")
    }
}

possibleCat = Cat(name: "Bella", vaccinated: true)  /// 🙋🏻‍♂️ 이름이 겹치는 친구임에도 불구하고 에러가 발생하지 않는 이유가 뭘까? -> we found the cat named bella
checkForPossibleNamedCat(possibleCat)

possibleCat = Cat()
checkForPossibleNamedCat(possibleCat)   /// argument로 사용된 possibleCat의 이름은 없는 친구 따라서 else 구문이 출력되는 것 -> we did not find a cat

// nil 값의 반응도 똑같이 출력된다. 결국 이름이 있는지 확인을 하지 못하기 때문에

/// 위에 값을 하나로 묶어서 출력할 수 있는 코드가 존재
func checkForPossibleCatAndPossibleName(_ possibleCat: Cat?) {
    if let cat = possibleCat {
        print("found a cat")
        if let name = cat.name {
            print("Cat's name is \(name)")
        } else {
            print("Cat doesn't have a name")
        }
    } else {
        print("we didn't find a cat")
    }
}

possibleCat = Cat(name: "New Cat")
checkForPossibleCatAndPossibleName(possibleCat)



//MARK: - optional Binding with early exits

func checkForPossibleCatAndPossibleName2(_ possibleCat: Cat?) {
    guard let cat = possibleCat else {
        print("did not find a cat")
        return
    }
    print("Found a cat")
    guard let name = cat.name else {
        print("did not have a name")
        return
    }
    print("The cat's name is \(name)")
}
possibleCat = Cat(name: "Jackie")
checkForPossibleCatAndPossibleName2(possibleCat)

possibleCat = Cat()
checkForPossibleCatAndPossibleName2(possibleCat)

possibleCat = nil
checkForPossibleCatAndPossibleName2(possibleCat)

/*
 - 가드문으로 벗겨낸 값은 if문과 다르게 범위를 벗어나여 사용 될 수 있기 때문에
 guard let보다 var로 사용하는 방법도 좋다 (개인 의견이겠지?)
 */



//MARK: - Combining optional bindings and boolean conditions

/*
 - 조건을 여러개 설정하여 filtering할 수 있다~ through using optional Binding
 조건에 부합하는 코드들만 실행을 하기에, 모든 값이 참이지 않은 이상
 optional binding은 이루어지지 않음
 */

func checkPossibleCat(_ possibleCat: Cat?, forName nameToMatch: String) {
    if let cat = possibleCat, let name = cat.name, name == nameToMatch {
        print("Found a cat with the matching name \(nameToMatch)")
    } else {
        print("did not find a cat with a name \(nameToMatch)")
    }
}

possibleCat = Cat(name: "Zoey")
checkPossibleCat(possibleCat, forName: "Zoey")

possibleCat = Cat(name: "whiskers")
checkPossibleCat(possibleCat, forName: "Zoey")

possibleCat = Cat()
checkPossibleCat(possibleCat, forName: "Zoey")



//MARK: - Loop optional Binding
 /*
  if 조건문과 마찬가지로 while문을 사용함으로써 해당 코드를 실행할지 말지 control을 조절할 수 있다. providing multiple [reasons] to stop the code from happening
  */

func checkAllVaccinatedCatsInArray(_ array: [Cat?]) {
    var index = 0
    while let cat = array[index], cat.vaccinated {
        index += 1
        if index == array.count {
            print("All vaccinated cats found")
            return
        }
    }
    print("Did not find vaccinated cat at index \(index)")
}

var possibleCats: [Cat?] = Array(repeating: Cat(vaccinated: true), count: 3)    // 왜 count값을 3으로 정리를 한거지... 우리 보고?
checkAllVaccinatedCatsInArray(possibleCats)


possibleCats.append(Cat())
checkAllVaccinatedCatsInArray(possibleCats) // 기존 3마리의 cat을 담은 possibleCats 배열에 새로운 고양이를 담았는데, 이 친구는 vaccinated 값을 따로 설정하지 않았음 따라서 false가 나옴 -> 해당 고양이의 위치가 3번이다보니 index3에 없다고 표시가 되는 것

//MARK: - name shadowing in optional binding







//: [Next](@next)
