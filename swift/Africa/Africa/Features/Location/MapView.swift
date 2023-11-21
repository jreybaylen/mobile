//
//  MapView.swift
//  Africa
//
//  Created by John Rey on 11/21/23.
//

import SwiftUI
import MapKit

struct MapView: View {
	
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
	
	let locations: [ Location ] = Bundle.main.decode("locations.json")
	
    var body: some View {
//		Map(coordinateRegion: $region)
		
		Map(
			coordinateRegion: $region,
			annotationItems: locations,
			annotationContent: {
				map in
				
//				MapPin(
//					coordinate: map.location,
//					tint: .accentColor
//				)
				
//				MapMarker(
//					coordinate: map.location,
//					tint: .accentColor
//				)
				
				MapAnnotation(
					coordinate: map.location,
					content: {
						Image("logo")
							.fitToScreen()
							.frame(
								width: 32,
								height: 32,
								alignment: .center
							)
					}
				)
			}
		)
    }
	
}

#Preview {
    MapView()
}
