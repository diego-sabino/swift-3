import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {

        GeometryReader { view in
            VStack {
                List(trips) { trip in
                    VStack(alignment: .leading) {
                        Text(trip.title)
                        Image(trip.image)
                            .resizable()
                            .frame(height: 250)
                            .cornerRadius(10)
                        
                        HStack {
                            Text(trip.numberOfDays)
                            
                            Spacer()
                            
                            Text(trip.value)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .scrollContentBackground(.hidden)
                
            }
        }
        .enableInjection()
    }
}
