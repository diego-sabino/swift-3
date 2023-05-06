//
//  CelluleTripsView.swift
//  AluraTravel
//
//  Created by Diego Sabino on 06/05/23.
//

import SwiftUI
import Inject

struct CelluleTripsView: View {
    @ObservedObject private var iO = Inject.observer
    var body: some View {
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
        .enableInjection()
    }
}
