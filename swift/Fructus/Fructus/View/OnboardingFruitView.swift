//
//  OnboardingFruitView.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct OnboardingFruitView: View {
	let fruit: Fruit
	
    var body: some View {
		ZStack {
			VStack(
				spacing: 16,
				content: {
					FruitImageView(fruitImage: fruit.image)
					
					Text(fruit.title)
						.font(.system(
							size: 40,
							weight: .heavy,
							design: .monospaced
						))
						.foregroundStyle(.white)
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
						.padding(.bottom, 10)
					
					Text(fruit.headline)
						.font(.subheadline)
						.foregroundStyle(.white)
						.multilineTextAlignment(.center)
						.padding(.bottom)
					
					OnboardingStartButtonView()
				}
			).padding(.horizontal)
		}.frame(
			maxWidth: .infinity,
			maxHeight: .infinity,
			alignment: .center
		).background(LinearGradient(
			colors: fruit.gradientColors,
			startPoint: .top,
			endPoint: .bottom
		))
		.cornerRadius(24)
		.padding(.horizontal, 8)
    }
}

#Preview {
	OnboardingFruitView(fruit: fruitsData[0])
}
