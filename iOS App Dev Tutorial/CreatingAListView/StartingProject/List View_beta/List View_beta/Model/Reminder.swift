//
//  Reminder.swift
//  List View_beta
//
//  Created by Jack Lee on 2023/06/25.
//

import Foundation

struct Reminder {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

#if DEBUG   //a compliation Directive that prevents the code from compiling
extension Reminder {    // 왜 extension으로 만들었지?
    static var reminderData = [
        Reminder(
            title: "친구 만나기",
            dueDate: Date().addingTimeInterval(800),
            notes: "지원이 코엑스에서 만나기"),
        Reminder(
            title: "책 사기",
            dueDate: Date().addingTimeInterval(1000),
            notes: "객체지향 관련 책 먼저 찾아보기"),
        Reminder(
            title: "스파이더맨 보기",
            dueDate: Date().addingTimeInterval(1100),
            isComplete: false),
        Reminder(
            title: "풍뎅이~",
            dueDate: Date().addingTimeInterval(2100))
    ]
}
#endif
