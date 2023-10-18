//
//  ControlImageView.swift
//  Pinch
//
//  Created by John Rey on 10/19/23.
//

import SwiftUI

struct ControlImageView: View {
	let icon: String
	
    var body: some View {
        Image(systemName: icon)
			.font(.system(size: 36))
    }
}

#Preview {
	ControlImageView(icon: "minus.magnifyingglass")
		.preferredColorScheme(.dark)
		.previewLayout(.sizeThatFits)
		.padding()
}
