//
//  ExpenseTrackerAppApp.swift
//  ExpenseTrackerApp
//
//  Created by Gustavo Gonçalves on 19/10/2023.
//

import SwiftUI

@main
struct ExpenseTrackerAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Expense.self, Category.self])
    }
}
