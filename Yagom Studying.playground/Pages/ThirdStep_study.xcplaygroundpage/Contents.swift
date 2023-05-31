//: [Previous](@previous)

import Foundation

struct Cookie {
    var height: Int
    var topping: String?
    var cookieBits: String
    var bar: Int
}

let firstCookie = Cookie(height: 10, topping: nil, cookieBits: "***", bar: 4)
let secondCookie = Cookie(height: 12, topping: "&", cookieBits: "***", bar: 4)
let thirdCookie = Cookie(height: 12, topping: "#", cookieBits: "***", bar: 6)

/// 몸통 + 토핑 한 줄 만드는 함수
func shapeCookie(with cookie: Cookie) {
    guard let topping = cookie.topping else {
        /// topping이 없으면 아래 코드 실행
        print("\(" " + cookie.cookieBits)")
        return
    }
    print("\(topping)\(cookie.cookieBits)\(topping)")
}

/// 높게 쿠키를 쌓는 함수
func makeCookie(cookie: Cookie) {
    for _ in 1...cookie.height {
        shapeCookie(with: cookie)
    }
}

/// 막대기 만드는 함수
func addSticks(bar: Int, cookieBits: String) {
    for _ in 1...bar {
        let totalLength = cookieBits.count + 2
        let bar = String(repeating: " ", count:totalLength / 2-1)
        print(bar, terminator: "")
        print("| |")
    }
}

/// 모든 함수를 한번에 실행하는 함수
func bakeCookies(cookie: Cookie) {
    shapeCookie(with: cookie)
    makeCookie(cookie: cookie)
}

bakeCookies(cookie: secondCookie)
addSticks(bar: secondCookie.bar, cookieBits: secondCookie.cookieBits)



//func bakeCookies(cookieBits: String, topping: String?, height: Int) {
//    for _ in 1...height {
//        makeCookieShape(with: cookieBits, topping: topping)
//    }
//}










/* 첫 커밋
struct Cookie {
    var height: Int
    var topping: String?
    var cookieBits: String
    var bar: Int
}

let firstCookie = Cookie(height: 10, topping: nil, cookieBits: "***", bar: 4)
let secondCookie = Cookie(height: 12, topping: "&", cookieBits: "***", bar: 4)
let thirdCookie = Cookie(height: 12, topping: "#", cookieBits: "***", bar: 6)

func makeCookieShape(with cookie: Cookie) {
    guard let topping = cookie.topping else {
        /// topping이 없으면 아래 코드 실행
        for _ in 1...cookie.height {
            print("\(" " + cookie.cookieBits)")
        }
        return
    }
    for _ in 1...cookie.height {
        print("\(topping)\(cookie.cookieBits)\(topping)")
    }
}
makeCookieShape(with: firstCookie)





func addSticks(bar: Int, cookieBits: String) {
    for _ in 1...bar {
        let totalLength = cookieBits.count + 2
        let bar = String(repeating: " ", count:totalLength / 2-1)
        print(bar, terminator: "")
        print("| |")
    }
}
addSticks(bar: secondCookie.bar, cookieBits: secondCookie.cookieBits)


//func bakeCookies(cookieBits: String, topping: String?, height: Int) {
//    for _ in 1...height {
//        makeCookieShape(with: cookieBits, topping: topping)
//    }
//}
 */

//: [Next](@next)
