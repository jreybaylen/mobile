//
//  DetailsScreen.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct DetailsScreen: View {
	
	let product: Product
	
    var body: some View {
		VStack(
			alignment: .leading,
			spacing: 5,
			content: {
				DetailsNavigationView()
				
				DetailsBannerView(product: product)
				
				ScrollView(content: {
					Text(product.description)
						.font(
							.system(
								.body,
								design: .rounded
							)
						)
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
				}).padding(
					.horizontal,
					16
				).background(
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
					red: product.red,
					green: product.green,
					blue: product.blue
				).ignoresSafeArea()
			)
    }
	
}

#Preview {
	DetailsScreen(product: TestProduct)
}
