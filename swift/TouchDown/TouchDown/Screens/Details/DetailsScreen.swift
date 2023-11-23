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
				
				DetailsReviewsView()
				
				DetailsDescriptionView()
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
