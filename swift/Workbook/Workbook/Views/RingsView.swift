//
//  RingsView.swift
//  Workbook
//
//  Created by John Rey on 10/16/23.
//

import SwiftUI

struct RingsView: View {
	@State var shapeColor: Color
	@State var shapeOpacity: Double
	@State var isAnimating = false
	
    var body: some View {
		ZStack {
			CustomCircleView(
				shapeColor: shapeColor,
				shapeOpacity: shapeOpacity,
				strokeWidth: 40
			)
			
			CustomCircleView(
				shapeColor: shapeColor,
				shapeOpacity: shapeOpacity,
				strokeWidth: 80
			)
		}.blur(radius: isAnimating ? 0 : 10)
			.opacity(isAnimating ? 1 : 0)
			.scaleEffect(isAnimating ? 1 : 0.5)
			.animation(
				.easeOut(duration: 1),
				value: isAnimating
			)
			.onAppear(perform: {
				isAnimating.toggle()
			})
    }
}

#Preview {
	ZStack {
		Color.customBlue
			.ignoresSafeArea()
		
		RingsView(
			shapeColor: .white,
			shapeOpacity: 0.2
		)
	}
}
