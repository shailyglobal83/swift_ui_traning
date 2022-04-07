//
//  ContentView.swift
//  List_GridViewDemo
//
//  Created by Ravindra Kumar Sonkar on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    let animals : [AnimalModel] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }//:LIST
            .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
            .navigationBarTitle("Animals", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
//                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
                    } label: {
                        Image(systemName: "square.grid.2x2")
                            .font(.title)
                            .foregroundColor(.primary)
                    }

                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
