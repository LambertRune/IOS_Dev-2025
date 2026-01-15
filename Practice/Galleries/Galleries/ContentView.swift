import SwiftUI

struct ContentView: View {
    @State private var pathStore = PathStore()
    @State var selectedGallery: Gallery?

    var body: some View {
        TabView {
            Tab("Galleries", systemImage: "none") {
                ListOfGalleriesView(selectedGallery: $selectedGallery)
                    .navigationTitle("Galleries")

            }
            
            Tab("\(selectedGallery?.name ?? "No gallery")", systemImage: "none") {
                NavigationStack(path: $pathStore.path) {
                    Group {
                        if selectedGallery != nil {
                            GalleryDetail(selectedGallery: .constant(selectedGallery))
                                .navigationTitle(selectedGallery!.name)
                        } else {
                            VStack {
                                Text("No Gallery Selected")
                                    .font(.title2)
                                Text("Please select a gallery from the first tab to see details.")
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.secondary)
                            }
                            .padding()
                        }
                    }
                    .navigationDestination(for: Destination.self) { destination in
                        switch destination {
                        case .artist(let artist):
                            ArtistDetailView(selectedArtist: artist, pathStore: $pathStore)
                        case .artwork(let artwork):
                            ArtworkDetailview(pathStore: $pathStore)
                        case .gallery(let gallery):
                            GalleryDetail(selectedGallery: .constant(gallery))
                        }
                    }
                }
            }
        }
    }
}
