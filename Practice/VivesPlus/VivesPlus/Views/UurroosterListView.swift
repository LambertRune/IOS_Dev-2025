import SwiftUI

struct UurroosterListView: View {
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
    @State private var selectedEvent: EventModel?
    @State var loading = true

    var body: some View {
        NavigationSplitView {
            // Sidebar content
            Group {
                if loading {
                    ProgressView("Loading...")
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                } else {
                    List(uurroosterDataStore.uurrooster, id: \.self, selection: $selectedEvent) { event in
                        VStack(alignment: .leading) {
                            HStack {
                                if event.allDay {
                                    Text(DateUtil.formatDate(date: event.startDateTime)).font(.headline)
                                } else {
                                    Text(DateUtil.formatDateTime(date: event.startDateTime)).font(.headline)
                                }
                                Spacer()
                            }
                            HStack {
                                Text(event.title).font(.subheadline)
                                Spacer()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Uurrooster")
            
            }
        } detail: {
            // Detail content
            if let selectedEvent {
                UurroosterDetailView(event: selectedEvent)
            } else {
                Text("Selecteer event")
            }
        }
        .task {
            await uurroosterDataStore.loadData()
            loading = false
        }
    }
}
