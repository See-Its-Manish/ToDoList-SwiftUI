//
//  ListView.swift
//  ToDoList
//
//  Created by Manish Sharma on 27/06/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second title!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false)
    ]
    var body: some View {
        List{
//            ListRowView(title: "Hii!  this is the first title!")
            ForEach(items) { item in
                ListRowView(item: item)
                
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems (
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
