//
//  FruitDetailsScreen.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct FruitDetailsScreen: View {
	let fruit: Fruit
	
    var body: some View {
		NavigationView {
			ScrollView {
				FruitImageHeaderView(fruit: fruit)
					.padding(.bottom, 20)
				
				VStack(
					alignment: .leading,
					spacing: 20,
					content: {
						Text(fruit.title)
							   .fontWeight(.heavy)
							   .foregroundStyle(fruit.gradientColors[1])
							   .font(.system(
								   .largeTitle,
								   design: .monospaced
							   ))
						
						Text(fruit.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
						
						Text("Learn more about \(fruit.title)".uppercased())
							.fontWeight(.semibold)
							.foregroundStyle(fruit.gradientColors[1])
						
						Text(fruit.description)
							.multilineTextAlignment(.leading)
						
						SourceLinkView()
					}
				).padding(.horizontal, 20)
			}.padding(.bottom, 50)
				.scrollIndicators(.hidden)
				.ignoresSafeArea()
		}
    }
}

#Preview {
    FruitDetailsScreen(fruit: fruitsData[0])
}
