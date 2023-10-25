//
//  ContentView.swift
//  ExpenseTrackerApp
//
//  Created by Gustavo Gonçalves on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: String = "Expenses"
    var body: some View {
        TabView(selection: $currentTab) {
            ExpensesView(currentTab: $currentTab)
                .tag("Expenses")
                .tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Expenses")
                }
            
            CategoriesView()
                .tag("Categories")
                .tabItem {
                    Image(systemName: "list.clipboard.fill")
                    Text("Categories")
                }
        }
    }
}

#Preview {
    ContentView()
}
