//
//  MotionAnimationView.swift
//  Hike
//
//  Created by John Rey on 10/10/23.
//

import SwiftUI

struct MotionAnimationView: View {
	@State private var isAnimating = false
	@State private var randomCircle = Int.random(in: 1...12)
	
	func randomCoordinate() -> CGFloat {
		return CGFloat.random(in: 0...256)
	}
	
	func randomSize() -> CGFloat {
		return CGFloat(Int.random(in: 4...80))
	}
	
	func randomScale() -> CGFloat {
		return CGFloat(Double.random(in: 0.1...2.0))
	}
	
	func randomSpeed() -> Double {
		return Double.random(in: 0.05...1.0)
	}
	
	func randomDelay() -> Double {
		return Double.random(in: 0...2)
	}
	
    var body: some View {
		ZStack {
			ForEach(
				0...randomCircle,
				id: \.self
			) {
				item in
				
				Circle()
					.foregroundStyle(.white)
					.opacity(0.25)
					.frame(width: randomSize())
					.position(
						x: randomCoordinate(),
						y: randomCoordinate()
					)
					.scaleEffect(isAnimating ? randomScale() : 1)
					.onAppear(
						perform: {
							withAnimation(
								.interpolatingSpring(
									stiffness: 0.25,
									damping: 0.25
								)
								.repeatForever()
								.speed(randomSpeed())
								.delay(randomDelay())
							) {
								isAnimating.toggle()
							}
						}
					)
			}
		}.mask(Circle())
			.frame(
				width: 256,
				height: 256
			)
			.drawingGroup()
    }
}

#Preview {
	MotionAnimationView()
		.background(
			Circle()
				.fill(.teal)
		)
}
