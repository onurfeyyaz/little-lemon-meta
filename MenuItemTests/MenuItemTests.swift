//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Feyyaz ONUR on 7.01.2023.
//

import XCTest
@testable import Meta_Little_Lemon_Final_Project

final class MenuItemTests: XCTestCase {
    let model = MenuViewViewModel()
    
    func testInitialMenuItemTitle(){
        let foodTitle1 = model.mockFoods.foods[0].title
        XCTAssertEqual(foodTitle1, "Food 1")
    }
    
    func testInitialMenuItemIngredient(){
        let ingredient = model.mockFoods.foods[0].ingredient[0]
        XCTAssertEqual(ingredient, .broccoli)
    }
}
