//
//  MenuViewViewModel.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 7.01.2023.
//

import Foundation

class MenuViewViewModel {
    let mockFoods = MockFoods()
    let mockDrinks = MockDrinks()
    let mockDesserts = MockDesserts()
    
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
