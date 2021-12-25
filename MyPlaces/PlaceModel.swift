//
//  PlaceModel.swift
//  MyPlaces
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
        "Mcdonalds", "Burgerking", "KGB", "Hinkalnaya",
        "Shaurma 1", "Dobraya", "Tatmak", "KFC", "Kayot",
        "Zhar pizza", "Volna"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Казань", type: "Ресторан", image: place))
        }
        
        return places
    }
}
