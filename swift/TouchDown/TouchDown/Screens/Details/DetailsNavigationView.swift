//
//  DetailsNavigationView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct DetailsNavigationView: View {
	
    var body: some View {
		HStack(content: {
			Image(systemName: "chevron.left")
				.font(.title)
				.foregroundColor(.white)
			
			Spacer()
			
			Image(systemName: "cart")
				.font(.title)
				.foregroundColor(.white)
		}).modifier(NavigationOffsetModifier())
    }
	
}

#Preview {
	ZStack(content: {
		Color.black.ignoresSafeArea()
		
		DetailsNavigationView()
	})
}
