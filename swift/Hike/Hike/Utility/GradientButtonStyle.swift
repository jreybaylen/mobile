//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by John Rey on 10/6/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		let colors = configuration.isPressed ? [
			Color.customGrayLight,
			Color.customGrayMedium
		] : [
			Color.customGrayMedium,
			Color.customGrayLight
		]
		
		configuration
			.label
			.padding(.vertical)
			.padding(.horizontal, 30)
			.background(
				LinearGradient(
					colors: colors,
					startPoint: .top,
					endPoint: .bottom
				)
			)
			.cornerRadius(40)
	}
}
