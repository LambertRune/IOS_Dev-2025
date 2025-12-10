

import SwiftUI

@main
struct MoviesApp: App {
    @State var dataStore = MovieDataStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore).environment(pathStore)
        }
    }
}
