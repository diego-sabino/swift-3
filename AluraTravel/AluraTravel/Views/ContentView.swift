import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {

        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: 170, alignment: .top)
                CelluleTripsView()
                    .scrollContentBackground(.hidden)
                
            }
        }
        .enableInjection()
    }
}
