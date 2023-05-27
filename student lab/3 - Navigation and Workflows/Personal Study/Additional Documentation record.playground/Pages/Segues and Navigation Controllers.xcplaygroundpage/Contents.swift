//: [Next](@next)

import Foundation

/*
 - every screen in every app have a different scene to display different types of info
 - Each scene is backed with separate view Controller instance or class
 

 ⭐️ You can create special relationship(?) with scenes that share related contetnt through navigation congtroller
 
 
 /// Segue - transition from one view controller to another
 modal presentation == place new view Controller on top of previous
 
 
 /// unwind Segue - remove/dismiss a connection of viewController from scenell
 
 
 /// Navigation controller manages stack of view Controllers and provide animation when navigating between related views
 ㄴ 네비게이션 컨트롤러를 활용하게 되면 present modally가 아니라 push - 가 가능해진다.
 이건, 밀어내는 느낌을 구현할 수 있도록 만드는데, navigation controller는 hierarchical data structure를 모방하기 때문
 
 
 - navigation 바에는 타이틀, 버튼명 작성 가능, 지정된 타이틀이 있다면 해당 view의 타이틀명을 활용
 Back 버튼이 지정되지 않았을 경우, title 명을 back 버튼 명으로 통일
 ㄴ navigation controller에서 prefer large title로 지정하면 모든 값이 변함 -> viewController 별로 개별 값을 지정할 수 있음
 
 
 
 
*/
 
//: [Next](@next)
