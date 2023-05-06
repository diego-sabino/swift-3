import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {
        VStack {
            Text("AluraTrips")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Black", size: 20))
            Text("Especial")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Book", size: 20))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            Text("Brasil")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Black", size: 23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            List {
                Text("São Paulo")
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
            }
        }
        .background(Color.purple)
        
        
        .enableInjection()
    }
        
}
