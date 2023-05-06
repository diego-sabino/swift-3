//
//  Viagem.swift
//  AluraTravel
//
//  Created by Diego Sabino on 05/05/23.
//

import Foundation
import MapKit

struct Trip: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var numberOfDays: String
    var value: String
    var coordinate: Coordinate
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinate.latitude,
            longitude: coordinate.longitude)
    }
}

struct Coordinate: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
