//
//  MenuItem.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 6.01.2023.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let ingredients: Ingredient
}
