

import SwiftUI
import Kingfisher

struct PokemonRow: View {
    
    let pokemon: Pokemon
    
    
    var body: some View {
        HStack {
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
            VStack(alignment: .leading, spacing: 5) {
                Text(pokemon.name.capitalized)
                    .font(.title2)
                HStack {
                    Text(pokemon.type)
                        .italic()
                        .font(.subheadline).bold()
                    Circle()
                        .foregroundColor(pokemon.typeColor)
                        .frame(width: 10, height: 10)
                }
                Text(pokemon.description)
                    .font(.caption)
                    .lineLimit(2)
            }
        }
    }
}
 
struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: MOCK_POKEMON[4])
    }
}

