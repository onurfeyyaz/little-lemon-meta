//
//  ContentView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 16.12.2022.
//

import SwiftUI

struct ContentView: View {
    private let mockFoods = MockFoods()
    private let mockDrinks = MockDrinks()
    private let mockDesserts = MockDesserts()
    
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
                    ForEach(mockFoods.foods) { food in
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
                    ForEach(mockDrinks.drinks) { drink in
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
                    ForEach(mockDesserts.desserts) { dessert in
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
            }
        }
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
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
