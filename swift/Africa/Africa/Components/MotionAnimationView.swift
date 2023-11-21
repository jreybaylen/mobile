//
//  MotionAnimationView.swift
//  Africa
//
//  Created by John Rey on 11/21/23.
//

import SwiftUI

struct MotionAnimationView: View {
	
	@State private var isAnimating = false
	@State private var randomCircle = Int.random(in: 12...16)
	
	func randCoordinate(max: CGFloat) -> CGFloat {
		return CGFloat.random(in: 0...max)
	}
	
	func randSize() -> CGFloat {
		return CGFloat(Int.random(in: 10...300))
	}
	
	func randScale() -> CGFloat {
		return CGFloat(Double.random(in: 0.1...2.0))
	}
	
	func randSpeed() -> Double {
		return Double.random(in: 0.025...1.0)
	}
	
	func randDelay() -> Double {
		return Double.random(in: 0...2)
	}
	
    var body: some View {
		GeometryReader(content: {
			geometry in
			
			let width = geometry.size.width
			let height = geometry.size.height
			
			ForEach(
				0...randomCircle,
				id: \.self,
				content: {
					_ in
					
					ZStack(content: {
						Circle()
							.foregroundColor(.gray)
							.opacity(0.15)
							.frame(
								width: randSize(),
								height: randSize(),
								alignment: .center
							)
							.scaleEffect(isAnimating ? randScale() : 1)
							.position(
								x: randCoordinate(max: width),
								y: randCoordinate(max: height)
							)
							.animation(
								Animation
									.interpolatingSpring(
										stiffness: 0.5,
										damping: 0.5
									)
									.repeatForever()
									.speed(randSpeed())
									.delay(randDelay())
							)
							.onAppear(perform: {
								isAnimating.toggle()
							})
					}).drawingGroup()
				}
			)
		})
    }
	
}

#Preview {
    MotionAnimationView()
}
