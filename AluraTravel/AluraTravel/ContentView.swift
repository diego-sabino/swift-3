//
//  ContentView.swift
//  AluraTravel
//
//  Created by Diego Sabino on 03/05/23.
//

import Inject
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!!!")
        }
        .padding()
        .enableInjection()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
