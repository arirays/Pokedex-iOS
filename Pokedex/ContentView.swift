

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM: PokemonViewModel = PokemonViewModel()
    
    @State var searchText: String = ""
    
    
    var filteredPokemon: [Pokemon] {
        if searchText == "" { return pokemonVM.pokemon }
        return pokemonVM.pokemon.filter { $0.name.lowercased().contains(searchText.lowercased()) }
    }
    
    var body: some View {
        NavigationView {
            PokemonList(pokemon: filteredPokemon)
//            PokemonList(pokemon: pokemonVM.pokemon)
            .navigationTitle("Pokedex")
            .searchable(text: $searchText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
