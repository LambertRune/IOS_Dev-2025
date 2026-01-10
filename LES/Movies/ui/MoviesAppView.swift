

import SwiftUI

struct MoviesAppView: View {
  
    @State var pathStore = PathStore()
    @Environment(MovieDataStore.self) private var dataStore
    var body: some View {/*
        NavigationSplitView {
            MovieListView(selectedMovie: $pathStore.selectedMovie, lstMovies: dataStore.getMovies()).padding()
        } content: {
            MovieDetailView(selectedMovie: pathStore.selectedMovie, pathStore: $pathStore).padding()
        } detail: {
            NavPathView(pathStore: $pathStore).padding()
        }*/
        Text("To Do")
    }
}

#Preview {
    MoviesAppView()
}
