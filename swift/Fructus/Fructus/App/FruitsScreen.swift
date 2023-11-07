//
//  FruitsScreen.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct FruitsScreen: View {
	private let fruits: [ Fruit ] = fruitsData.shuffled()
	
	@State private var displaySettings = false
	
    var body: some View {
		NavigationView(content: {
			ScrollView(content: {
				ForEach(
					fruits,
					content: {
						fruit in
							
						NavigationLink(destination: FruitDetailsScreen(fruit: fruit)) {
							HStack(content: {
								ZStack {
									LinearGradient(
										colors: fruit.gradientColors,
										startPoint: .top,
										endPoint: .bottom
									).frame(
										width: 100,
										height: 100
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
										.frame(
											width: 80,
											height: 80
										)
								}.clipShape(RoundedRectangle(cornerRadius: 8))
								
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
				.toolbar(content: {
					Button(
						action: {
							displaySettings.toggle()
						},
						label: {
							Image(systemName: "slider.horizontal.3")
								.fontWeight(.bold)
						}
					).sheet(
						isPresented: $displaySettings,
						content: {
							SettingsScreen()
						}
					)
				})
		})
    }
}

#Preview {
    FruitsScreen()
}
