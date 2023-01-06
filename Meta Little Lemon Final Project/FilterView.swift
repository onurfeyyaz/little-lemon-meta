//
//  FilterView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 6.01.2023.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Selected Categories") {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                }
                Section("Sort By") {
                    ForEach(SortMenu.allCases, id: \.self) { item in
                        Text(item.rawValue)
                        
                    }
                }
            }.navigationTitle("Filter")
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
