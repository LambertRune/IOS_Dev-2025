//
//  GalleryDetail.swift
//  Galleries
//
//  Created by rune on 15/01/2026.
//

import SwiftUI

struct GalleryDetail: View {
    @Binding var selectedGallery:Gallery?

    @Environment(GalleriesDataStore.self) private var store
    var body: some View {
        if(selectedGallery == nil){
            Text("no gallery found.")
        }
        else{
            VStack{
            
                Divider().foregroundStyle(.brown).padding(.top)
                Text(selectedGallery!.name).font(.title).foregroundStyle(.brown)
                Text(selectedGallery!.location).font(.caption).fontWeight(.bold)
                Text(selectedGallery!.description).foregroundStyle(.gray)
                Divider().foregroundStyle(.brown)
                Text("List of artists").foregroundStyle(.brown).fontWeight(.bold)
            }.frame(alignment: .center)
            
            List(store.getArtistsByGallery(gallery: selectedGallery!), id: \.self) { artist in
                NavigationLink(value: Destination.artist(artist)) {
                    VStack {
                        Text("\(artist.name)").foregroundStyle(.brown).fontWeight(.bold)
                        Text("\(artist.nationality)").foregroundStyle(.gray).padding(.leading)
                    }
                }
            }
            }
            
        }
    }

