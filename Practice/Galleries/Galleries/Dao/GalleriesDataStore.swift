//
//  GalleriesDataStore.swift
//  Galleries
//
//  Created by rune on 15/01/2026.
//

import Foundation

@Observable
class GalleriesDataStore{
    
    var galleries: Galleries
    
    init() {
        self.galleries = load("galleries.json")
    }
    
    func getAllGalleries() -> [Gallery]{
        print("ik ben er")
        return galleries.galleries
    }
    
    func getArtistsByGallery(gallery:Gallery) -> [Artist]{
        return gallery.artists
    }
    
    func getArtworksByArtist(artist:Artist) -> [Artwork]{
        return artist.artworks
    }
}
