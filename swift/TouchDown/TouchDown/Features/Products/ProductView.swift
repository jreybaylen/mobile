//
//  ProductView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct ProductView: View {
	
	let product: Product
	
    var body: some View {
		VStack(
			alignment: .leading,
			spacing: 6,
			content: {
				ZStack(content: {
					Image(product.image)
						.fitScreen()
						.padding(10)
				}).background(
					Color(
						red: product.red,
						green: product.green,
						blue: product.blue
					)
				).clipShape(
					RoundedRectangle(cornerRadius: Constants.BORDER_RADIUS)
				)
				
				Text(product.name.capitalized)
					.font(.title3)
					.fontWeight(.black)
					.padding(
						.bottom,
						-5
					)
				
				Text(product.formattedPrice)
					.fontWeight(.semibold)
					.foregroundColor(.gray)
			}
		).padding(
			.bottom,
			16
		)
    }
	
}

#Preview {
	ProductView(product: TestProduct)
}
