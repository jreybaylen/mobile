//
//  LocationModel.swift
//  Africa
//
//  Created by John Rey on 11/20/23.
//

import MapKit

struct Location: Codable, Identifiable {
	
	let id: String
	let name: String
	let image: String
	let latitude: Double
	let longitude: Double
	
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: latitude,
			longitude: longitude
		)
	}
	
}
