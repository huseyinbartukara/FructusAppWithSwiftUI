//
//  ContentView.swift
//  Fructus
//
//  Created by Bartu Kara on 20.09.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    var fruits:[Fruit] = fruitsData
    
    @State private var isShowingSettings : Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }){
                Image(systemName: "slider.horizontal.3")
            }//: Button
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }//: Navigation View
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
