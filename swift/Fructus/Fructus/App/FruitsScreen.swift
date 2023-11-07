//
//  FruitsScreen.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct FruitsScreen: View {
	private let fruits: [ Fruit ] = fruitsData.shuffled()
	
    var body: some View {
		NavigationView(content: {
			ScrollView(content: {
				ForEach(
					fruits,
					content: {
						fruit in
							
						NavigationLink(destination: FruitDetailsScreen(fruit: fruit)) {
							HStack(content: {
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
									.frame(
										width: 80,
										height: 80
									)
								
								VStack(
									alignment: .leading,
									content: {
										Text(fruit.title.uppercased())
											.font(.system(
												.headline,
												design: .monospaced
											))
											.foregroundStyle(fruit.gradientColors[1])
											.fontWeight(.heavy)
											.padding(.bottom, 1)
										
										Text(fruit.headline)
											.font(.footnote)
											.multilineTextAlignment(.leading)
										
										Spacer()
									}
								)
								
								Spacer()
								
								Image(systemName: "chevron.right")
									.opacity(0.5)
							}).padding(.top, 24)
						}.padding(.horizontal, 16)
					}
				)
			}).navigationTitle("Fruits")
				.scrollIndicators(.hidden)
		})
    }
}

#Preview {
    FruitsScreen()
}
