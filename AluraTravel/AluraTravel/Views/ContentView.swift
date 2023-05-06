import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: 170, alignment: .top)
                    List(trips) { trip in
                        NavigationLink(destination: MapView(coordinate: trip.location)) {
                            CelluleTripsView(trip: trip)
                                .listRowInsets(EdgeInsets())
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    .scrollContentBackground(.hidden)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .enableInjection()
    }
}
