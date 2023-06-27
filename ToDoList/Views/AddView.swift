//
//  AddView.swift
//  ToDoList
//
//  Created by Manish Sharma on 27/06/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here ....", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.008, brightness: 0.942))
                    .cornerRadius(10)
                
                Button(action : {
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            AddView()
        }
        
    }
}
