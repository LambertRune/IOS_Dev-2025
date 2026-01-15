import SwiftUI

struct ArtworkDetailview: View {
    // We gebruiken een binding zodat we de centrale navigatie-stack kunnen aanpassen
    @Binding var pathStore: PathStore
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Artwork Details")
                .font(.largeTitle)
            
            Text("Hier komt de informatie over het kunstwerk.")
            
            Divider()
            
            // Voorbeeld van programmatic navigation (zoals in je docu)
            Button("Terug naar alle gallerijen") {
                // Maakt de stack leeg (pop to root)
                pathStore.path = []
            }
            .buttonStyle(.borderedProminent)
            
            Button("Ga een stap terug") {
                // Verwijdert de laatste view van de stack
                if !pathStore.path.isEmpty {
                    pathStore.path.removeLast()
                }
            }
            .buttonStyle(.bordered)
        }
        .navigationTitle("Kunstwerk")
    }
}
