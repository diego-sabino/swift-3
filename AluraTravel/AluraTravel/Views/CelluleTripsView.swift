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
    var trip: Trip
    
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    
    var body: some View {
        let fontSize: CGFloat = self._horizontalSizeClass == .compact ? 22 : 27
        let imgHeight: CGFloat = self._horizontalSizeClass == .compact ? 220 : 500
        
        VStack(alignment: .leading) {
            Text(trip.title)
                .font(.custom("Avenir Light", size: fontSize))
            Image(trip.image)
                .resizable()
                .frame(height: imgHeight)
                .cornerRadius(10)
            
            HStack {
                Text(trip.numberOfDays)
                    .font(.custom("Avenir Light", size: fontSize))
                
                Spacer()
                
                Text(trip.value)
                    .font(.custom("Avenir Light", size: fontSize))
            }
            .listRowSeparator(.hidden)
        }
        .enableInjection()
    }
}
