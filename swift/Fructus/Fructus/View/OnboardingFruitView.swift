//
//  OnboardingFruitView.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct OnboardingFruitView: View {
	let fruit: Fruit
	
	@State var isAnimatingImage = false
	
    var body: some View {
		ZStack {
			VStack(
				spacing: 16,
				content: {
					Image(fruit.image)
						.resizable()
						.scaledToFit()
						.padding()
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
						.scaleEffect(isAnimatingImage ? 1.0 : 0.6)
					
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
					
					Button(
						action: {
						
						},
						label: {
							Text("Start".uppercased())
							
							Spacer()
							
							Image(systemName: "arrow.right.circle")
						}
					).foregroundStyle(.white)
						.font(.subheadline)
						.fontWeight(.bold)
						.padding(.vertical, 12)
						.padding(.horizontal, 16)
						.background(Capsule().strokeBorder(
							.white,
							lineWidth: 2
						))
						.frame(width: 120)
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
		.onAppear(perform: {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimatingImage = true
			}
		})
    }
}

#Preview {
	OnboardingFruitView(fruit: fruits[0])
}
