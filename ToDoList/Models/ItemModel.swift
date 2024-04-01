//
//  ItemModel.swift
//  ToDoList
//
//  Created by Manish Sharma on 27/06/23.
//

import Foundation


// Immutbale Structs
struct ItemModel: Identifiable, Codable {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() ->ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


