import Foundation

//MARK: - 변수(Variable) && 상수(Constant)

/* VARIABLE
 - 변수는 픅로그램에서 값을 저장하는 공간
 - 변수는 var 키워드를 앞에 붙여 표현하면 ⏲️ 해당 값을 가지는 변수가 메모리에 생성됨 ⏲️
    eg) var num = 100을 적으면, 이름이 num인 공간이 생성되고 100 값을 담게 된다.
 - num = 200으로 작성하게 되면 ⏲️ 이미 존재하는 공간에 값을 담게 된다 ⏲️
 */

var number = 100
number = 200


/* CONSTANT
 - 상수는 ⏲️ 값을 바꿀 수 없는 공간 ⏲️
 - let으로 표현
 */

let newNumber = 100
// newNumber = 200 -> error occurs

//MARK: - 이름짓기 (naming)

/*
 - 이름짓기는 코드에서 매우매우매우!! 중요하다
 - 초보의 경우, 변수의 이름이나 함수의 이름을 next 등 의미 없는 이름으로 짓는 실수를 하게 된다 🔥
 - 매우 좋지 않는 습관이므로 초보일 때 교정을 해야함
 - 존재의 이유가 없는 변수는 없다 -> ⏲️ 고로 변수의 이름은 명확해야한다 ⏲️
*/
 
/* 컴퓨터와의 약속!
 -> 숫자로 시작할 수 없습니다
 -> 띄어쓰기를 할 수 없습니다
 -> 특수문자는 $와 _만 허용됩니다
 */

/* 사람간의 약속!
 -> 변수의 이름의 첫 글자는 소문자
 -> 몇 단어가 합쳐진 단어라면 두번째 단어, 첫글자를 대문자
    myName, yourName
 -> Swift API Design Guideline을 따른 이름을 지을 것
    🚀 필수
 -> 함수의 이름도 소문자로 시작, 변수의 이름은 명사 - 함수는 동사
    변수는 담는 역할, 함수는 코드를 실행하는 역할이기 때문
*/


//MARK: - 스스로 해보기!

var name = "길동"
//for count in 1...3 {
//    print("\(name)이 \(count)번째 폴짝!")
//}

name = "춘향"
//for count in 1...3 {
//    print("\(name)이 \(count)번째 폴짝!")
//}


func makesJump(name: String) {
    for count in 1...3 {
        print("\(name)이 \(count)번째 폴짝!")
    }
}

makesJump(name: name)



