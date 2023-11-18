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
			ScrollView(
				showsIndicators: false,
				content: {
					AnimalsCoverView()
					
					AnimalsView()
				}
			).navigationTitle("Africa")
		})
    }
	
}

#Preview {
    BrowseView()
}
