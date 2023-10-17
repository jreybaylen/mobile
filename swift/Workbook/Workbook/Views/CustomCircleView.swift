//
//  CustomCircleView.swift
//  Workbook
//
//  Created by John Rey on 10/16/23.
//

import SwiftUI

struct CustomCircleView: View {
	@State var shapeColor: Color
	@State var shapeOpacity: Double
	@State var strokeWidth: CGFloat
	
    var body: some View {
		Circle()
			.stroke(
				shapeColor.opacity(shapeOpacity),
				lineWidth: strokeWidth
			)
			.frame(
				width: 260,
				height: 260,
				alignment: .center
			)
    }
}

#Preview {
	ZStack {
		Color.customBlue
			.ignoresSafeArea()
		
		CustomCircleView(
			shapeColor: .white,
			shapeOpacity: 0.2,
			strokeWidth: 40
		)
	}
}
