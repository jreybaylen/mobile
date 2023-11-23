//
//  DetailsBannerView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct DetailsBannerView: View {
	
	@State private var isAnimating = false
	
    var body: some View {
		VStack(
			alignment: .leading,
			content: {
				VStack(
					alignment: .leading,
					spacing: 6,
					content: {
						Text("Protective Gear")
					
						Text(TestProduct.name)
							.font(.largeTitle)
							.fontWeight(.black)
					}
				).foregroundColor(.white)
					.padding(
						.bottom,
						30
					)
				
				HStack(
					alignment: .center,
					spacing: 6,
					content: {
						VStack(
							alignment: .leading,
							spacing: 6,
							content: {
								Text("Price")
									.fontWeight(.semibold)
								
								Text(TestProduct.formattedPrice)
									.font(.largeTitle)
									.fontWeight(.black)
									.scaleEffect(
										1.35,
										anchor: .leading
									)
							}
						).offset(y: isAnimating ? -50 : -75)
						
						Spacer()
						
						Image(TestProduct.image)
							.fitScreen()
							.offset(y: isAnimating ? 0 : -35)
					}
				).onAppear(perform: {
					withAnimation(.easeOut(duration: 0.75)) {
						isAnimating.toggle()
					}
				})
			}
		).zIndex(1)
			.padding(
				.horizontal,
				16
			)
    }
	
}

#Preview {
	ZStack(content: {
		Color(
			red: TestProduct.red,
			green: TestProduct.green,
			blue: TestProduct.blue
		).ignoresSafeArea()
		
		DetailsBannerView()
	})
}
