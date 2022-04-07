//
//  Scroller_ContentView.swift
//  List_GridViewDemo
//
//  Created by Ravindra Kumar Sonkar on 05/04/22.
//

import SwiftUI

struct Scroller_ContentView: View {
    let animals : [AnimalModel] = Bundle.main.decode("animals.json")
    @State private var gridLayout = [GridItem()]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, spacing: 10) {
                    ForEach(animals) { animal in
                        NavigationLink {
                            SwiftUIView()
                        } label: {
                            if gridLayout.count == 1 {
                                AnimalListItemView(animal: animal)
                            }else {
                                Image(animal.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: gridLayout.count == 1 ? 200 : 100)
                                    .cornerRadius(10)
                                    .shadow(color: Color.primary.opacity(0.3), radius: 1)
                            }

                        }


                    }
                }
                .padding(.all, 10)
                .animation(.interactiveSpring(), value: gridLayout.count)
            }//:ScrollView
            .navigationBarTitle("Animals", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
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

struct Scroller_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Scroller_ContentView()
    }
}
