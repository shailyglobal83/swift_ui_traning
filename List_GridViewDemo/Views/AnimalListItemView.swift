//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Ravindra Kumar Sonkar on 01/04/22.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal : AnimalModel
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let animals : [AnimalModel] = Bundle.main.decode("animals.json")
        AnimalListItemView(animal: animals[1])
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
