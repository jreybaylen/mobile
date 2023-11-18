//
//  MapKitView.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

import SwiftUI
import MapKit

struct MapKitView: View {
	
	@State private var region = MKCoordinateRegion(
		center: CLLocationCoordinate2D(
			latitude: 6.600286,
			longitude: 16.4377599
		),
		span: MKCoordinateSpan(
			latitudeDelta: 60.0,
			longitudeDelta: 60.0
		)
	)
	
    var body: some View {
        Map(coordinateRegion: $region)
			.overlay(
				NavigationLink(
					destination: {
						MapKitView()
					},
					label: {
						HStack(content: {
							Image(systemName: "mappin.circle")
								.font(.system(size: 24, weight: .semibold))
								.foregroundColor(.white)
							
							Text("Locations")
								.foregroundColor(.accentColor)
								.fontWeight(.bold)
						}).padding(
							.vertical,
							10
						).padding(
							.horizontal,
							14
						).background(
							Color
								.black
								.opacity(0.4)
								.clipShape(RoundedRectangle(cornerRadius: 8))
						)
					}
				).padding(12),
				alignment: .topTrailing
			)
			.frame(height: 256)
			.clipShape(RoundedRectangle(cornerRadius: 12))
    }
	
}

#Preview {
    MapKitView()
}
