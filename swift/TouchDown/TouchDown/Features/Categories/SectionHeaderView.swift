//
//  SectionHeaderView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct SectionHeaderView: View {
	
	let rotateClockWise: Bool
	
    var body: some View {
		VStack(
			spacing: 0,
			content: {
				Spacer()
				
				Text("CATEGORIES")
					.font(.footnote)
					.fontWeight(.bold)
					.foregroundColor(.white)
					.rotationEffect(Angle(degrees: rotateClockWise ? 90.0 : -90.0))
				
				Spacer()
			}
		).frame(width: 85)
			.background(Color.gray.cornerRadius(Constants.BORDER_RADIUS).opacity(0.4))
    }
	
}

#Preview {
	SectionHeaderView(rotateClockWise: true)
}
