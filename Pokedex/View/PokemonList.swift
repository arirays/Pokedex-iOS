

import SwiftUI

struct PokemonList: View {
    
    let pokemon: [Pokemon]
    
    var body: some View {
        List {
            ForEach(pokemon, id: \.id) { pokemon in
                NavigationLink(destination: PokeDetailView(pokemon: pokemon), label: {
                    
                    PokemonRow(pokemon: pokemon)
                })
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(pokemon: [])
    }
}
