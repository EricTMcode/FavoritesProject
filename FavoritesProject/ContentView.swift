//
//  ContentView.swift
//  FavoritesProject
//
//  Created by Eric on 04/09/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Button("Toggle Favorites", action: vm.sortFavs)
                .padding()
            
            List {
                ForEach(vm.filteredItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            
                            Text(item.description)
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: vm.contains(item) ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                            .onTapGesture {
                                vm.toggleFav(item: item)
                            }
                    }
                }
            }
            .cornerRadius(10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
