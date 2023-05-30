//: [Previous](@previous)

import Foundation

//MARK: - Instance

struct Computer {
    var battery: Int = 100
    let manufacturer: String = "Apple"
    
    func saveData() {
        print("데이터를 저장합니다.")
    }
    
    func playVideo() {
        print("영상을 재생합니다.")
    }
}

var myComputer: Computer = Computer()   // Computer.init()과 같은 표현
myComputer.battery = 80                 /// 인스턴스가 가르키는 값들은 고정값이 아니라 복붙을 해서 담은 것과 동일하다.
                                        // ㄴ struct와 class의 차이를 한번 더 정리를 해보자
//myComputer.manufacturer = "야곰 아카데미"     // let은 변경 불가능
myComputer.saveData()

var yagomComputer: Computer = Computer()
yagomComputer.battery = 20
yagomComputer.playVideo()

//let manufacturer property를 수정하게 될 경우 컴파일 오류 발생
//하나의 설계도로 여러개의 instance 생성 가능
//인스턴스트는 설계도에서 찍힌 친구를 의미하며 설계도가 담고 있는 다양한 값들을 가질 수 잇게 된다
//프로세스가 종료되면 컴퓨터 메모리 또한 사라진다



//: [Next](@next)
