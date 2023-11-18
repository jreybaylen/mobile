//
//  IconWithLabelView.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

import SwiftUI

struct IconWithLabelView: View {
	
	let icon: String
	let label: String
	
	var body: some View {
		HStack(content: {
			Image(systemName: icon)
				.foregroundColor(.accentColor)
				.imageScale(.large)
			
			Text(label)
				.font(.title3)
				.fontWeight(.bold)
		}).padding(.top)
	}
	
}

#Preview {
	IconWithLabelView(
		icon: "photo.on.rectangle",
		label: "Wilderness in Pictures"
	)
}
