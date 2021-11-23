//
//  PokeDetailView.swift
//  Pokedex
//
//  Created by Ari on 11/18/21.
//

import SwiftUI
import Kingfisher

struct PokeDetailView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        
        VStack {
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
                .padding()
            
            Text(pokemon.name.capitalized)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(pokemon.type)
                .italic()
                .foregroundColor(pokemon.typeColor)
                .fontWeight(.bold)
            
            Text(pokemon.description)
                .font(.body)
                .padding()
            
            
    }
}

struct PokeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetailView(pokemon: MOCK_POKEMON[3])
    }
}
}
