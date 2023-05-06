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
                .frame(width: view.size.width, height: 135, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button("Hotéis") {}
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                        .background(.blue)
                        .offset(x: -50)
                    
                    Button("Button") {}
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                        .background(.orange)
                        .offset(x: 50)
                }
                .offset(y: -35)
                
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
