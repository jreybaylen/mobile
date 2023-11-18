//
//  TabItemView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct TabItemView: View {
	
	let icon: String
	let label: String
	
	var body: some View {
		Image(systemName: icon)
		
		Text(label.capitalized)
	}
	
}

#Preview {
    TabItemView(
		icon: "square.grid.2x2",
		label: "browse"
	)
}
