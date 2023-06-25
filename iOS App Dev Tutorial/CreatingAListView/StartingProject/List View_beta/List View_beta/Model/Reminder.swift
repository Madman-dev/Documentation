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
extension Reminder {
    static var reminderData = [
        Reminder(title: "친구 만나기", dueDate: Date().addingTimeInterval(800)),
        Reminder(title: "책 사기", dueDate: Date().addingTimeInterval(1000)),
        Reminder(title: "스파이더맨 보기", dueDate: Date().addingTimeInterval(1100))
    ]
}
#endif
