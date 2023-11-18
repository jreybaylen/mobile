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
				AnimalsCoverView()
				
				AnimalsView()
			}).listStyle(PlainListStyle())
				.navigationTitle("Africa")
		})
    }
	
}

#Preview {
    BrowseView()
}
