//
//  MenuItem.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 6.01.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orders: Int { get set }
    var price2: Int { get set }
    var ingredient: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {
    var id = UUID()
    var title: String
    var ingredient: [Ingredient]
    var price: Double
    var menuCategory: MenuCategory
    var orders: Int
    var price2: Int
}
