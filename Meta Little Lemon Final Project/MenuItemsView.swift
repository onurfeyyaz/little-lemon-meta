//
//  ContentView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 16.12.2022.
//

import SwiftUI

struct MenuItemsView: View {
    let viewModel = MenuViewViewModel()
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text("Foods")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                LazyVGrid(columns: columns){
                    ForEach(viewModel.mockFoods.foods) { food in
                        Element(name: food.title)
                    }
                }
                HStack {
                    Text("Drinks")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                LazyVGrid(columns: columns){
                    ForEach(viewModel.mockDrinks.drinks) { drink in
                        Element(name: drink.title)
                    }
                }
                HStack {
                    Text("Desserts")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                LazyVGrid(columns: columns){
                    ForEach(viewModel.mockDesserts.desserts) { dessert in
                        Element(name: dessert.title)
                    }
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: FilterView()) {
                        Image(systemName: "slider.horizontal.3")
                            .imageScale(.large)
                    }
                    
                }
            }        }
    }
}

struct Element: View {
    var name = ""
    var body: some View {
        VStack(alignment: .center){
            Rectangle()
                .fill(.black)
                .frame(width: 120, height: 100)
            Text(name)
        }.padding(.all)
    }
}
    
struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
