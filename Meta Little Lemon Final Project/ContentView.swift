//
//  ContentView.swift
//  Meta Little Lemon Final Project
//
//  Created by Feyyaz ONUR on 16.12.2022.
//

import SwiftUI

private var foods = [MenuItem]()

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
