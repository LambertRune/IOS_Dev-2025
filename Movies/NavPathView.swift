

import SwiftUI

struct NavPathView: View {
    @Binding var pathStore: PathStore
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            VStack {
                Text("Select actor or director").foregroundStyle(.gray)
            }
            
        }
    }
}
