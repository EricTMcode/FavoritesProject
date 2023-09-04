//
//  Model.swift
//  FavoritesProject
//
//  Created by Eric on 04/09/2023.
//

import Foundation

struct Item: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String
    
    static var sampleItems: [Item] {
        var tempList = [Item]()
        
        for i in 1...20 {
            let id = i
            let title = "Title \(i)"
            let description = "This is a sample description."
            
            tempList.append(Item(id: id, title: title, description: description))
        }
        return tempList
    }
}
