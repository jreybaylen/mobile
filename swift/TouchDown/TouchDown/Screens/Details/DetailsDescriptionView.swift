//
//  DetailsDescriptionView.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct DetailsDescriptionView: View {
	
    var body: some View {
		ScrollView(content: {
			Text(TestProduct.description)
				.font(
					.system(
						.body,
						design: .rounded
					)
				)
				.foregroundColor(.gray)
				.multilineTextAlignment(.leading)
		}).padding(
			.horizontal,
			16
		).background(
			Color
				.white
				.clipShape(RadiusShape())
				.padding(
					.top,
					-105
				)
		)
    }
	
}

#Preview {
	ZStack(content: {
		Color(
			red: TestProduct.red,
			green: TestProduct.green,
			blue: TestProduct.blue
		).ignoresSafeArea()
		
		DetailsDescriptionView()
			.padding(
				.top,
				200
			).ignoresSafeArea()
	})
}
