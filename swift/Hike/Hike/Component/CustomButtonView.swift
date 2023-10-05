//
//  CustomButtonView.swift
//  Hike
//
//  Created by John Rey on 10/6/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
		ZStack {
			Circle()
				.fill(
					LinearGradient(
						colors: [
							.customGreenLight,
							.customGreenDark
						],
						startPoint: .top,
						endPoint: .bottom
					)
				)
			
			Circle()
				.stroke(
					LinearGradient(
						colors: [
							.customGrayLight,
							.customGrayMedium
						],
						startPoint: .top,
						endPoint: .bottom
					),
					lineWidth: 4
				)
			
			Image(systemName: "figure.hiking")
				.fontWeight(.black)
				.font(.system(size: 30))
				.foregroundStyle(
					LinearGradient(
						colors: [
							.customGrayLight,
							.customGrayMedium
						],
						startPoint: .top,
						endPoint: .bottom
					)
				)
		}
		.frame(
			width: 58,
			height: 58
		)
    }
}

#Preview {
    CustomButtonView()
}
