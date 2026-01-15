import SwiftUI

struct ListOfGalleriesView: View {
    @Environment(GalleriesDataStore.self) private var galeriesDataStore
    @Binding var selectedGallery: Gallery?
    
    var body: some View {
        List(galeriesDataStore.getAllGalleries(), id: \.self, selection: $selectedGallery) { gallery in
            NavigationLink(value: Destination.gallery(gallery)) {
                VStack(alignment: .leading) {
                    Text(gallery.name)
                        .font(.title)
                        .foregroundStyle(.brown)
                    
                    Text(gallery.location)
                        .font(.caption)
                        .fontWeight(.bold)
                    
                    Text(gallery.description)
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }.frame(alignment: .center)
            }
        }
    }
}
