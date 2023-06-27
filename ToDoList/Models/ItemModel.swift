//
//  ItemModel.swift
//  ToDoList
//
//  Created by Manish Sharma on 27/06/23.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}


