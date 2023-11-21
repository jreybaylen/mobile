//
//  CopyrightView.swift
//  Africa
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct CopyrightView: View {
    var body: some View {
		VStack(
			alignment: .center,
			spacing: 20,
			content: {
				Image("compass")
					.fitToScreen()
					.frame(
						width: 128,
						height: 128
					)
				
				VStack(
					spacing: 4,
					content: {
						Text("Copyright © Jrey The DevTools")
						Text("All right reserved")
						Text("Less Code Do More ")
					}
				).font(.footnote)
			}
		).padding()
			.opacity(0.4)
    }
}

#Preview {
    CopyrightView()
}
