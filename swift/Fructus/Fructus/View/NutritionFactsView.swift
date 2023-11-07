//
//  NutritionFactsView.swift
//  Fructus
//
//  Created by John Rey on 11/7/23.
//

import SwiftUI

struct NutritionFactsView: View {
	let fruit: Fruit
	
	private let nutrients = [ "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals" ]
	
    var body: some View {
		GroupBox(content: {
			DisclosureGroup(
				content: {
					VStack {
						ForEach(0..<nutrients.count, id: \.self) {
							item in
							
							Divider()
								.padding(
									.vertical,
									5
								)
							
							HStack(
								alignment: .top,
								content: {
									Group {
										Image(systemName: "info.circle")
										Text(nutrients[ item ])
									}.foregroundStyle(fruit.gradientColors[1])
										.fontWeight(.semibold)
									
									Spacer()
									
									Text(fruit.nutrition[ item ])
										.multilineTextAlignment(.trailing)
								}
							).padding(.top, 3)
						}
					}.padding(.top, 10)
				},
				label: {
					Text("Nutrition value per 100g")
				}
			)
		})
    }
}

#Preview {
    NutritionFactsView(fruit: fruitsData[0])
}
