//
//  NavigationLogoView.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct NavigationLogoView: View {
	
    var body: some View {
		HStack(content: {
			Text("TOUCH")
				.fontWeight(.black)
				.font(.title2)
			
			Image("logo-dark")
				.fitScreen()
				.frame(
					width: 30,
					height: 30
				)
			
			Text("DOWN")
				.fontWeight(.black)
				.font(.title2)
		})
    }
	
}

#Preview {
    NavigationLogoView()
}
