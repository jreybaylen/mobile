//
//  MapView.swift
//  Africa
//
//  Created by John Rey on 11/21/23.
//

import SwiftUI
import MapKit

struct MapView: View {
	
	let locations: [ Location ] = Bundle.main.decode("locations.json")
	
	@State private var region: MKCoordinateRegion = {
		let coordinates = CLLocationCoordinate2D(
			latitude: 6.600286,
			longitude: 16.4377599
		)
		let zoom = MKCoordinateSpan(
			latitudeDelta: 70.0,
			longitudeDelta: 70.0
		)
		
		return MKCoordinateRegion(
			center: coordinates,
			span: zoom
		)
	}()
	
    var body: some View {
		Map(
			coordinateRegion: $region,
			annotationItems: locations,
			annotationContent: {
				map in
				
				MapAnnotation(
					coordinate: map.location,
					content: {
						MapAnnotationView(location: map)
					}
				)
			}
		)
    }
	
}

#Preview {
    MapView()
}
