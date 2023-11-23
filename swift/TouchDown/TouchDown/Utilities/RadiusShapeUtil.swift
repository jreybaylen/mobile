//
//  RadiusShapeUtil.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct RadiusShape: Shape {
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(
			roundedRect: rect,
			byRoundingCorners: [
				.topLeft,
				.topRight
			],
			cornerRadii: CGSize(
				width: 35,
				height: 35
			)
		)
		
		return Path(path.cgPath)
	}
	
}

#Preview {
	RadiusShape()
}
