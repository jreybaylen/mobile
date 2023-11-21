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
		).overlay(
			HStack(
				alignment: .center,
				spacing: 12,
				content: {
					Image("compass")
						.fitToScreen()
						.frame(
							width: 48,
							height: 48,
							alignment: .center
						)
					
					VStack(
						alignment: .leading,
						spacing: 3,
						content: {
							HStack(content: {
								Text("Latitude:")
									.foregroundColor(.accentColor)
									.font(.footnote)
									.bold()
								
								Spacer()
								
								Text("\(region.center.latitude)")
									.foregroundColor(.white)
									.font(.footnote)
							})
							
							HStack(content: {
								Text("Longitude:")
									.font(.footnote)
									.foregroundColor(.accentColor)
									.bold()
								
								Spacer()
								
								Text("\(region.center.longitude)")
									.font(.footnote)
									.foregroundColor(.white)
							})
						}
					)
				}
			).padding(.vertical, 12)
				.padding(.horizontal, 16)
				.background(
					Color
						.black
						.clipShape(RoundedRectangle(cornerRadius: 8))
						.opacity(0.6)
				)
				.padding(),
			alignment: .top
		)
    }
	
}

#Preview {
    MapView()
}
