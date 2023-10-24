//
//  FruitImageView.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct FruitImageView: View {
	let fruit: Fruit
	
	@State private var isAnimatingImage = false

    var body: some View {
		ZStack {
			LinearGradient(
				colors: fruit.gradientColors,
				startPoint: .top,
				endPoint: .bottom
			)
			
			Image(fruit.image)
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
				.scaleEffect(isAnimatingImage ? 1.0 : 0.6)
		}.frame(height: 440)
			.onAppear(perform: {
				withAnimation(.easeOut(duration: 0.5)) {
				  isAnimatingImage = true
				}
			})
    }
}

#Preview {
	FruitImageView(fruit: fruits[0])
}
