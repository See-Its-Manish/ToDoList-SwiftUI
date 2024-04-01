//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Manish Sharma on 27/06/23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
           
        }
    }
}
