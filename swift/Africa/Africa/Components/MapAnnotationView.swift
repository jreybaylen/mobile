//
//  MapAnnotationView.swift
//  Africa
//
//  Created by John Rey on 11/21/23.
//

import SwiftUI

struct MapAnnotationView: View {
	
	let location: Location
	
	@State private var animation = 0.0
	
    var body: some View {
		ZStack {
			Circle()
				.fill(Color.accentColor)
				.frame(
					width: 54,
					height: 54,
					alignment: .center
				)
			
			Circle()
				.stroke(Color.accentColor, lineWidth: 2)
				.frame(
					width: 52,
					height: 52,
					alignment: .center
				)
				.scaleEffect(1 + CGFloat(animation))
				.opacity(1 - animation)
			
			Image(location.image)
				.fitToScreen()
				.frame(
					width: 48,
					height: 48,
					alignment: .center
				)
				.clipShape(Circle())
		}.onAppear(perform: {
			withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
				animation = 1
			}
		})
    }
	
}

#Preview {
    MapAnnotationView(location: TestAnimalLocation)
}
