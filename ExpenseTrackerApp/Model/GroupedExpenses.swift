//
//  GroupedExpenses.swift
//  ExpenseTrackerApp
//
//  Created by Gustavo Gonçalves on 20/10/2023.
//

import SwiftUI

struct GroupedExpenses: Identifiable {
    var id: UUID = .init()
    var date: Date
    var expenses: [Expense]
    
    var groupTitle: String {
        let calendar = Calendar.current
        
        if calendar.isDateInToday(date) {
            return "Today"
        } else if calendar.isDateInYesterday(date) {
            return "Yesterday"
        } else {
            return date.formatted(date: .abbreviated, time: .omitted)
        }
    }
}
