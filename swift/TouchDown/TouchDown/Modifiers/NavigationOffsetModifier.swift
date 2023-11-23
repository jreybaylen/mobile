//
//  NavigationOffsetModifier.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct NavigationOffsetModifier: ViewModifier {
	
	func body(content: Content) -> some View {
		content
			.padding(.bottom)
			.padding(
				.top,
				UIApplication
					.shared
					.windows
					.first?
					.safeAreaInsets
					.top
			)
			.padding(
				.horizontal,
				16
			)
	}
	
}
