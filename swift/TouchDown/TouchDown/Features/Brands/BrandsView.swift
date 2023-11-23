//
//  BrandsView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct BrandsView: View {
	
    var body: some View {
		HeadingView(title: "Brands")
		
		ScrollView(
			.horizontal,
			showsIndicators: false,
			content: {
				LazyHGrid(
					rows: Constants.GRID_LAYOUT,
					alignment: .center,
					spacing: Constants.GRID_SPACE,
					content: {
						ForEach(
							Constants.BRANDS,
							content: {
								brand in
								
								BrandView(brand: brand)
							}
						)
					}
				).padding(1)
					.frame(height: 200)
			}
		).padding(
			EdgeInsets(
				top: 0,
				leading: 15,
				bottom: 16,
				trailing: 15
			)
		)
    }
	
}

#Preview {
    BrandsView()
}
