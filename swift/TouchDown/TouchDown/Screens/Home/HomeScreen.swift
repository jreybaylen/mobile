//
//  HomeScreen.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct HomeScreen: View {
	
	var body: some View {
		ZStack(content: {
			VStack(
				spacing: 0,
				content: {
					NavigationView()
					
					ScrollView(
						.vertical,
						showsIndicators: false,
						content: {
							FeaturedPlayersView()
							
							CategoriesView()
							
							ProductsView()
							
							BrandsView()
							
							FooterView()
						}
					)
				}
			).background(Color.appBackground.ignoresSafeArea())
		}).ignoresSafeArea()
	}
}

#Preview {
    HomeScreen()
}
