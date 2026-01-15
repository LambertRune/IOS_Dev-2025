//
//  PathStore.swift
//  Galleries
//
//  Created by rune on 15/01/2026.
//

import Foundation

@Observable
class PathStore {
    var path = [Destination]()
}
enum Destination: Hashable {
    case gallery(Gallery)
    case artist(Artist)
    case artwork(Artwork)
}
