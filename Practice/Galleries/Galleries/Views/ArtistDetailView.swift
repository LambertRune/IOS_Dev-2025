import SwiftUI

struct ArtistDetailView: View {
    @State var selectedArtist: Artist
    @Binding var pathStore: PathStore // Binding om de navigatiestack te beheren
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(selectedArtist.name)
                    .font(.largeTitle)
                    .bold()
                
                Text(selectedArtist.style) // Veronderstelt dat Artist een bio property heeft
                    .font(.body)
                
                Divider()
                
                Text("Artworks")
                    .font(.headline)
                
                // Voorbeeld: Navigeren naar een Artwork (zoals in je docu)
                ForEach(selectedArtist.artworks, id: \.self) { artwork in
                    Button(action: {
                        // Gebruik append om een nieuwe view op de stack te leggen
                        pathStore.path.append(Destination.artwork(artwork))
                    }) {
                        HStack {
                            Text(artwork.title)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding()
                        .cornerRadius(8)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .navigationTitle("Artist")
    }
}
