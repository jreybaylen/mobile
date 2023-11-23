//
//  CategoryView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct CategoryView: View {
	
	let category: Category
	
	var body: some View {
		Button(
			action: {
			
			},
			label: {
				HStack(
					content: {
						Image(category.image)
							.renderingMode(.template)
							.fitScreen()
							.foregroundColor(.gray)
							.frame(
								width: 30,
								height: 30,
								alignment: .center
							)
						
						Text(category.name.uppercased())
							.fontWeight(.light)
							.foregroundColor(.gray)
						
						Spacer()
					}
				).padding()
					.background(
						Color
							.white
							.clipShape(
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
		)
	}
	
}

#Preview {
	CategoryView(category: TestCategory)
}
