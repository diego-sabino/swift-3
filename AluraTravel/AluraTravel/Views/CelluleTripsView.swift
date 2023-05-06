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
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    
    var body: some View {
        let fontSize: CGFloat = self._horizontalSizeClass == .compact ? 22 : 27
        let imgHeight: CGFloat = self._horizontalSizeClass == .compact ? 220 : 300
        
        if self._horizontalSizeClass == .compact {
            List(trips) { trip in
                TripInfoView(trip: trip, fontSize: fontSize, imgHeight: imgHeight)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
            }
        } else {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(trips) { trip in
                        TripInfoView(trip: trip, fontSize: fontSize, imgHeight: imgHeight)
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }
                .padding()
            }
            .enableInjection()
        }
    }
}

struct TripInfoView: View {
    @ObservedObject private var iO = Inject.observer
    var trip: Trip
    var fontSize: CGFloat
    var imgHeight: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(trip.title)
                .font(.custom("Avenir Light", size: fontSize))
            
            Image(trip.image)
                .resizable()
                .frame(height: imgHeight)
                .cornerRadius(7)
            
            HStack {
                Text(trip.numberOfDays.replacingOccurrences(of: "days", with: "dias"))
                    .font(.custom("Avenir Light", size: fontSize))
                
                Spacer()
                
                Text(trip.value)
                    .font(.custom("Avenir Light", size: fontSize))
            }
        }
        .enableInjection()
    }
}
