//
//  RatingsView.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct RatingsView: View {
	
    var body: some View {
		VStack(
			alignment: .leading,
			spacing: 6,
			content: {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(.gray)
				
				HStack(
					spacing: 6,
					content: {
						ForEach(
							1...5,
							id: \.self,
							content: {
								_ in
								
								Button(
									action: {
										
									},
									label: {
										Image(systemName: "star.fill")
											.frame(
												width: 28,
												height: 28,
												alignment: .center
											)
											.background(
												Color
													.gray
													.clipShape(
														RoundedRectangle(cornerRadius: 5)
													)
											)
											.foregroundColor(.white)
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
    RatingsView()
}
