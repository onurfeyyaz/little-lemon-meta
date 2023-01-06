//
//  MenuCategory.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 6.01.2023.
//

import Foundation

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

class MockFoods {
    var foods = [MenuItem]()
    
    init(foods: [MenuItem] = [MenuItem]()) {
        for i in 1...12 {
            self.foods.append(MenuItem(title: "Food \(i)", ingredients: [.broccoli, .carrot]))
        }
    }
}

class MockDrinks {
    var drinks = [MenuItem]()
    
    init(drinks: [MenuItem] = [MenuItem]()) {
        for i in 1...8 {
            self.drinks.append(MenuItem(title: "Drink \(i)", ingredients: [.broccoli, .carrot]))
        }
    }
}

class MockDesserts {
    var desserts = [MenuItem]()
    
    init(desserts: [MenuItem] = [MenuItem]()) {
        for i in 1...4 {
            self.desserts.append(MenuItem(title: "Dessert \(i)", ingredients: [.broccoli, .carrot]))
        }
    }
}
