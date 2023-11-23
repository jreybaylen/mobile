//
//  HeadingView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct HeadingView: View {
	
	let title: String
	
    var body: some View {
		HStack(content: {
			Text(title)
				.font(.largeTitle)
				.fontWeight(.black)
			
			Spacer()
		}).padding(
			EdgeInsets(
				top: 16,
				leading: 16,
				bottom: 0,
				trailing: 16
			)
		)
    }
	
}

#Preview {
	HeadingView(title: "Helmets")
}
