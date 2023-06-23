import Foundation

// MARK: - Representing and Throwing Errors
/*
 1. need to conform to Error Protocol
 2. enums are great way to organize errors. -> Like so
 */

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

/*
 Throwing an error indicates something wrong happened with code and normal flow of execution is unabled.
 이럴 때 발생한 '에러'를 던지는 것
 */

//throw VendingMachineError.insufficientFunds(coinsNeeded: 5) // -> indicates five more coins are needed = error
/// 말그대로 에러가 있다는 것을 represent하기 위한 구성이구나... 오호


// MARK: - Handling Errors
/*
 - 에러 발생 시, 이를 대응할 수 있는 코드가 필요하다.
 - Swift에는 4가지의 error handling 방법이 있다. 에러가 발생한 코드 (함수)에서 호출로 해당 에러를 Do -catch 구문을 통해 보낼 수 있다.
 -> Swift에서 에러 핸들링은 call stack(?)을 복기하지 않아도 되는데, throw 구문은 마치 return 구문처럼 작동한다.
 */

// MARK: - Propagate error using throw function

// 함수 || 메서드를 호출하는 코드로 에러를 던질 수 있다. >> 에러를 받은 함수는 해당 에러 처리를 ⭐️꼭⭐️ 해야한다
// 일반적으로 함수는 not Throwing 형식이다.

//func canThrowErrors() throws -> String
//func cannotThrowErrors() -> String


struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNeeded name: String) throws {         // return이 아니기 때문에 throws로 끝나면 되고 >> 에러가 발생하면 바로 던질 수 있도록 guard문을 사용한다~ 오호
        guard let item = inventory[name] else {         // 작성한 아이템 이름이 맞는지 확인하고
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {                     // 작성한 아이템 갯수가 충분한지 확인하고
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {       // 넣은 돈이 충분한지 확인하고
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)   /// 이런 행동을 control flow가 아니라 transfer of control이라고 부르는구나
//            print("이게 안나와?")                        // throw  이후 코드는 무조건 실행 안되네? 오호...
        }
        
        coinsDeposited -= item.price                    // 넣은 돈에서 item 비용 만큼 차감하고
        
        var newItem = item                              // 이부분이 이해 안되 🙋🏻‍♂️ >> 새로 데이터를 담는 이유는 let item인 이유도 있고 값을 직접적으로 바꾸는것보다 좋아서 그렇다?
        newItem.count -= 1                              // 여기서 해당 item의 숫자를 빼는 거고
        inventory[name] = newItem                       // 여기는? dictionary에 값을 붙이는 거야?
        
        print("Dispensing \(name)")
//        print(newItem)                                // dictionary다 보니까 새로운 키 값을 이렇게 업데이트하네 지속적으로
//        print(item)
    }
}


let machine = VendingMachine()
//try machine.vend(itemNeeded: "Chips")

/// 위 방식처럼 vend 메서드는 에러를 던지기 때문에 어디에서도 호출을 하면 에러를 던지게 된다. 이 때, 에러는 무조건 처리를 해야하는데, do-catch 구문, try? try! 혹은 계속 해서 에러가 처리 될 때까지 전달을 해야한다.
/// 🙋🏻‍♂️ try랑 do catch랑 그러면 어떤 차이가 있는거지?

let favoriteSnack = [
    "Alice": "Chips",
    "Jack": "Candy",
    "Steve": "Pretzels"
]


func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnack[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNeeded: snackName)
}

//try buyFavoriteSnack(person: "", vendingMachine: machine)   // 여기서 stock이 없으면 그냥 종료되어 버리네


// MARK: - Do - Catch Statement

/*
 - catch 키워드 이후 어떤 에러들을 해결할 수 있는지 작성한다.
 - 만일 catch에 해당되는 패턴이 없으면, 어떠한 에러든 error라는 지역 상수에 묶는다. -> 이걸 활용한다는 뜻 ->> clause로 구분하지 않고 error로 처리하게 되면, default 같은 역할을 하는걸까?
 */


/// 아래 예시는 VendingMachineError의 3가지 case에 모두 해당한다.
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8

do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)   // try를 통해 에러가 발생할 수 있는 호출을 실행하는 것?
    print("구매했다 행복해~")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {    // let coinsNeeded는 처음보네 오호...
    print("돈이 부족해요. 비용을 \(coinsNeeded)만큼 넣어주세요")
} catch VendingMachineError.invalidSelection {
    print("선택하신 과자가 없어요. 다른 과자를 선택하세요")
} catch VendingMachineError.outOfStock {
    print("모두 떨어졌어요 ㅠ")
} catch {
    print("에러가 발생했습니다. \(error)")                               // 마지막은 확실히 default 같은 역할을 하는 친구네
}

// catch구문은 발생할 수 있는 모든 에러를 다루지 않아도 된다?  -> 만일 catch 구문들이 에러를 잡지 못한다면 근처 스코프로 에러를 전달한다(?) -> ???? 왜? -> 결국 다른 스코프로 전달되더라도 해결이 되야 한다고 한다... 오호...
// throw가 없는 함수 || method는 do - catch 구문으로 에러를 해결해야한다.
// throw가 있는 함수 || method는 do - catch 구문으로 해결을 하거나 호출 코드가 에러를 해결해야한다. -> 만일 최상위의 스코프로 에러가 전달된다면 런타임 오류가 발생한다.

/// VendingMachineError가 아닌 에러들이 모두 걸릴 수 있도록 정리 가능 -> 이해 안됨 🙋🏻‍♂️
func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNeeded: item)
    } catch is VendingMachineError {
        print("해당 제품은 판매하고 있지 않습니다.")
    }
}

do {
    try nourish(with: "Beet-flavored Juice")
} catch {
    print("예상치 못한 에러가 발생했습니다. \(error)")
}


//catch several related errors to list them after catch

func eat(item: String) throws {
    do {
        try vendingMachine.vend(itemNeeded: item)
    } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
        print("전체 에러 발생")
    }
}

try eat(item: "파스타")
