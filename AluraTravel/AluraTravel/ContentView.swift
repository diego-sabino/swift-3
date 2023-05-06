import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {
        VStack {
            Text("AluraTrips")
            Text("Especial")
            Text("Brasil")
        }
        
        List {
            Text("São Paulo")
            Text("Rio de Janeiro")
            Text("Ceará")
            Text("Atibaia")
        }
        
        
        
        .enableInjection()
    }
}
