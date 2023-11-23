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
				
				Spacer()
			}
		).ignoresSafeArea()
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
