//
//  DetailsScreen.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct DetailsScreen: View {
	
    var body: some View {
		VStack(
			alignment: .leading,
			spacing: 5,
			content: {
				DetailsNavigationView()
				
				DetailsBannerView()
				
				VStack(content: {
					DetailsReviewsView()
					
					ScrollView(
						.vertical,
						showsIndicators: false,
						content: {
							Text(TestProduct.description)
								.font(.body)
								.foregroundColor(.gray)
								.multilineTextAlignment(.leading)
						}
					)
					
					DetailsQtyAndFavView()
					
					Button(
						action: {
							
						},
						label: {
							Spacer()
							
							Text("ADD TO CART")
								.font(.title2)
								.fontWeight(.bold)
								.foregroundColor(.white)
							
							Spacer()
						}
					).padding(16)
						.background(
							Color(
								red: TestProduct.red,
								green: TestProduct.green,
								blue: TestProduct.blue
							)
						)
						.clipShape(Capsule())
						.padding(
							.bottom,
							30
						)
				}).padding(
					.horizontal,
					16
				)
					.background(
						Color
							.white
							.clipShape(RadiusShape())
							.padding(
								.top,
								-105
							)
					)
			}
		).zIndex(0)
			.ignoresSafeArea()
			.background(
				Color(
					red: TestProduct.red,
					green: TestProduct.green,
					blue: TestProduct.blue
				).ignoresSafeArea()
			)
    }
	
}

#Preview {
	DetailsScreen()
}
