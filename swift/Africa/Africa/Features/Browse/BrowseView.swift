//
//  BrowseView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct BrowseView: View {
	
	var body: some View {
		NavigationView(content: {
			List(content: {
				ImageSliderView()
					.frame(height: 300)
					.listRowInsets(EdgeInsets(
						top: 0,
						leading: 0,
						bottom: 0,
						trailing: 0
					))
			}).navigationTitle("Africa")
		})
    }
	
}

#Preview {
    BrowseView()
}
