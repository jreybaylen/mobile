//
//  DetailsNavigationView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct DetailsNavigationView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		HStack(content: {
			Image(systemName: "chevron.left")
				.font(.title)
				.foregroundColor(.white)
				.onTapGesture(perform: {
					shop.clear()
				})
			
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
			.environmentObject(Shop())
	})
}
