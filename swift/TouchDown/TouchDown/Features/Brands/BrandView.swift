//
//  BrandView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct BrandView: View {
	
	let brand: Brand
	
    var body: some View {
		Image(brand.image)
			.fitScreen()
			.padding(6)
			.background(
				Color.white.clipShape(
					RoundedRectangle(cornerRadius: Constants.BORDER_RADIUS)
				)
			)
			.background(
				RoundedRectangle(cornerRadius: Constants.BORDER_RADIUS)
					.stroke(
						Color.gray,
						lineWidth: 1
					)
			)
    }
	
}

#Preview {
	BrandView(brand: TestBrand)
}
