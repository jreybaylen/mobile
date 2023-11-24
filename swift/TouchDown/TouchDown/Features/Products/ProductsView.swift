//
//  ProductsView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct ProductsView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		HeadingView(title: "Helmets")
		
		LazyVGrid(
			columns: Constants.GRID_LAYOUT,
			alignment: .center,
			spacing: Constants.GRID_SPACE,
			content: {
				ForEach(
					Constants.PRODUCTS,
					content: {
						product in
						
						ProductView(product: product)
							.onTapGesture(perform: {
								shop.add(product)
							})
					}
				)
			}
		).padding(
			.horizontal,
			16
		)
    }
	
}

#Preview {
    ProductsView()
		.environmentObject(Shop())
}
