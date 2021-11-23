

import Foundation
import SwiftUI

struct Pokemon: Decodable, Identifiable {
    
    var pokeID: UUID {
        get {
            UUID()
        }
    }
    
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    
    
    var typeColor: Color {
        switch type {
        case "fire":
            return Color(.systemRed)
        case "poison":
            return Color(.systemGreen)
        case "water":
            return Color(.systemTeal)
        case "electric":
            return Color(.systemYellow)
        case "psychic":
            return Color(.systemPurple)
        case "normal":
            return Color(.systemOrange)
        case "ground":
            return Color(.systemBrown)
        case "flying":
            return Color(.systemBlue)
        case "fairy":
            return Color(.systemPink)
        default:
            return Color(.systemIndigo)
        }
    }
    
}


let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "star", type: "poison", description: "Bulbasaur can be seen napping in bright sunlight.There is a seed on its back. By soaking up the sun's.."),
    .init(id: 1, name: "Ivysaur", imageUrl: "star", type: "poison", description: "Bulbasaur can be seen napping in bright sunlight.There is a seed on its back. By soaking up the sun's.."),
    .init(id: 2, name: "Venusaur", imageUrl: "star", type: "poison", description: "Bulbasaur can be seen napping in bright sunlight.There is a seed on its back. By soaking up the sun's.."),
    .init(id: 3, name: "Charmander", imageUrl: "star", type: "fire", description: "Bulbasaur can be seen napping in bright sunlight.There is a seed on its back. By soaking up the sun's.."),
    .init(id: 4, name: "Charmeleon", imageUrl: "star", type: "fire", description: "Bulbasaur can be seen napping in bright sunlight.There is a seed on its back. By soaking up the sun's..")
]



