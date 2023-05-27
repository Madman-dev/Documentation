//: [Previous](@previous)

import Foundation

//MARK: - Enumeration

/*
 - 열거형 = type
 - 사용자 필요에 의해 만들어 사용하는 타입 중 하나
 
 - 항목들을 열거해 놓았다고 해서 열거형(enum)이라고 부름
 ㄴ 개발자들에게 제한된 선택지를 줄 때 사용
 ㄴ 정해진 값 이외 입력받고 싶지 않을 경우
 
 */

//MARK: - 일반 선언

enum Dish {
    case rice, noodle, soup
}

func choose(dish: Dish) {
    print("\(dish)를 골랐네요?")
}

choose(dish: Dish.noodle)
choose(dish: Dish.rice)
// 온전히 enum으로 입력 할 수 있는 타입을 제한하고 - "이런식으로 내용 작성"하지 않기에 입력 오류가 발생할 확률이 떨어짐
/// 초반에는 타입 추론은 되도록 지양할 수 있도록 직접 코드를 쳐볼 것! eg) .rice => NO!


//MARK: - 다양한 선언 방식
/// case를 이어 붙이거나 일렬로 열거할 수 있음
enum SecondDish {
    case rice, noodle
    case soup
}

/// case의 값 타입을 지정할 수 있음 - 이럴 경우 rawValue라는게 지정됨
enum ThirdDish: String {    // 해당 열거형의 원시값 타입을 지정할 수도 있다 -> This only takes in Strings?
    case rice = "밥", noodle = "면", soup = "수프"
}

func chooseWithValue(dish: ThirdDish) { // 해당 열거형이 지정된 값을 가지고 있어야 이렇게 가능하네
    print("\(dish.rawValue)을 골랐군요")
}


//MARK: - Do it yourself

// 성별을 표현하는 열거형
enum Gender {
    case male
    case female
}

// 방위를 표현하는 열거형
enum direction {
    case north, west, east, south
}

// 무선 통신방식을 표현하는 열거형
enum telecommunication: String {
    case wifi = "와이파이"
    case lte = "엘티이"
    case threeG = "3G"
    case fourG = "4G"
    case fiveG = "5G"
}

// 맥북 시리즈를 표현하는 열거형
enum macBook: Int {
    case mac = 0, macbookMini, macbookPro, iMac, macMini
}



//: [Next](@next)
