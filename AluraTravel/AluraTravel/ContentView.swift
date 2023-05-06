import SwiftUI
import Inject

struct ContentView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {

        GeometryReader { view in
            VStack {
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
                   
                }
                .frame(width: view.size.width, height: 100, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button("Hotéis") {}
                        .frame(width: 100, height: 50)
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                        .background(.blue)
                    
                    Button("Button") {}
                        .frame(width: 100, height: 50)
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                        .background(.orange)
                        
                }
                
                List {
                    Text("São Paulo")
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                }
            }
        }
        .enableInjection()
    }
        
        
}
