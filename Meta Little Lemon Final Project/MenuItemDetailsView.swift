//
//  MenuItemDetailsView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 7.01.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var model: MenuItem
    
    var body: some View {
        ScrollView {
            HStack {
                Text(model.title)
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            Image(uiImage: UIImage(named: "logo")!)
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 70, bottom: 0, trailing: 70))
            Text("Price:\n\(model.price)")
            Text("Ordered:\n\(model.orders)")
            Text("Ingredients:")
            ForEach(model.ingredient, id: \.self) {
                ingredient in
                Text(ingredient.rawValue)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static let menuPreview = MenuItem(title: "Title", ingredient: [.spinach], price: 1.0, menuCategory: .food, orders: 1, price2: 1)
    static var previews: some View {
        MenuItemDetailsView(model: menuPreview)
    }
}
