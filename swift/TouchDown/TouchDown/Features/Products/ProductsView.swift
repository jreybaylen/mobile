//
//  ProductsView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct ProductsView: View {
	
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
}
