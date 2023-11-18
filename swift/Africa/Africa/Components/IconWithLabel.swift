//
//  IconWithLabel.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct IconWithLabel: View {
	
	let icon: String
	let label: String
	
    var body: some View {
		HStack {
			Image(systemName: icon)
				.foregroundColor(.accentColor)
				.imageScale(.large)
			
			Text(label)
				.font(.title3)
				.fontWeight(.bold)
		}.padding(.top)
    }
	
}

#Preview {
	IconWithLabel(
		icon: "photo.on.rectangle",
		label: "Wilderness in Pictures"
	)
}
