//
//  SizesView.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct SizesView: View {
	
    var body: some View {
		VStack(
			alignment: .leading,
			spacing: 6,
			content: {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(.gray)
				
				HStack(
					spacing: 6,
					content: {
						ForEach(
							Constants.PRODUCT_SIZES,
							id: \.self,
							content: {
								size in
								
								Button(
									action: {
										
									},
									label: {
										Text(size)
											.font(.footnote)
											.fontWeight(.semibold)
											.foregroundColor(.gray)
											.frame(
												width: 28,
												height: 28,
												alignment: .center
											)
											.background(
												Color
													.white
													.clipShape(
														RoundedRectangle(cornerRadius: 5)
													)
											)
											.background(
												RoundedRectangle(cornerRadius: 5)
													.stroke(
														Color.gray,
														lineWidth: 2
													)
											)
									}
								)
							}
						)
					}
				)
			}
		)
    }
	
}

#Preview {
    SizesView()
}
