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
		}
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
