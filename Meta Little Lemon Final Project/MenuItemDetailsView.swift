//
//  MenuItemDetailsView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 7.01.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var name: String = "asd"
    var price: Double = 1.1
    var ordered: Int = 1
    var ingredients: [Ingredient] = [.pasta]
    
    var body: some View {
        VStack {
            HStack {
                Text("Food Name")
                    .font(.largeTitle)
                Spacer()
            }
            Image(uiImage: UIImage(named: "logo")!)
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 70, bottom: 0, trailing: 70))
            Text("Price:\n\(price)")
            Text("Ordered:\n\(ordered)")
            ScrollView {
                Text("Ingredients")
                ForEach(ingredients, id: \.self) {
                    ingredient in
                    Text(ingredient.rawValue)
                }
            }
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
