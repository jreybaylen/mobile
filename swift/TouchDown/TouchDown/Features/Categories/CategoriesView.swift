//
//  CategoriesView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct CategoriesView: View {
	
	var body: some View {
		ScrollView(
			.horizontal,
			showsIndicators: false,
			content: {
				LazyHGrid(
					rows: Constants.GRID_LAYOUT,
					alignment: .center,
					spacing: Constants.GRID_SPACE,
					pinnedViews: [],
					content: {
						Section(
							header: SectionHeaderView(rotateClockWise: false),
							footer: SectionHeaderView(rotateClockWise: true),
							content: {
								ForEach(
									Constants.CATEGORIES,
									content: {
										category in
										
										CategoryView(category: category)
									}
								)
							}
						)
					}
				).frame(height: 140)
					.padding(
						.horizontal,
						16
					)
					.padding(
						.bottom,
						10
					)
			}
		)
	}
	
}

#Preview {
    CategoriesView()
}
