//
//  FooterView.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
		VStack(
			alignment: .center,
			spacing: 12,
			content: {
				Text("We offer the most cutting edge, \ncomfortable, lightweight, and durable \nfootball helmets \nin the market at affordable prices.")
					.font(.body)
					.multilineTextAlignment(.center)
				
				Image("logo-lineal")
					.fitScreen()
					.frame(
						width: 40,
						height: 40
					)
				
				Text("Copyright © John Rey \nAll right reserved")
					.font(.footnote)
					.multilineTextAlignment(.center)
			}
		).opacity(0.4)
			.padding(
				.bottom,
				32
			)
    }
}

#Preview {
    FooterView()
}
