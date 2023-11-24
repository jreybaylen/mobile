//
//  HomeScreen.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct HomeScreen: View {
	
	@EnvironmentObject var shop: Shop
	
	var body: some View {
		if shop.product == nil {
			ZStack(content: {
				VStack(
					spacing: 0,
					content: {
						HomeNavigationView()
						
						ScrollView(
							.vertical,
							showsIndicators: false,
							content: {
								PlayersView()
								
								CategoriesView()
								
								ProductsView()
								
								BrandsView()
								
								FooterView()
							}
						)
					}
				).background(
					Color
						.appBackground
						.ignoresSafeArea()
				)
			}).ignoresSafeArea()
		} else {
			DetailsScreen()
		}
	}
}

#Preview {
    HomeScreen()
		.environmentObject(Shop())
}
