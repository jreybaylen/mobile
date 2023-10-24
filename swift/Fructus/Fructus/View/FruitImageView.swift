//
//  FruitImageView.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct FruitImageView: View {
	let fruitImage: String
	
	@State var isAnimating: Bool = false

	var body: some View {
		Image(fruitImage)
			.resizable()
			.scaledToFit()
			.shadow(
				color: Color(
					red: 0,
					green: 0,
					blue: 0,
					opacity: 0.15
				),
				radius: 8,
				x: 6,
				y: 8
			)
			.padding(.vertical, 20)
			.scaleEffect(isAnimating ? 1.0 : 0.6)
			.onAppear(perform: {
				withAnimation(.easeOut(duration: 0.5)) {
					isAnimating = true
				}
			})
			.onDisappear(perform: {
				isAnimating = false
			})
	}
}

#Preview {
	FruitImageView(fruitImage: "blueberry")
}
