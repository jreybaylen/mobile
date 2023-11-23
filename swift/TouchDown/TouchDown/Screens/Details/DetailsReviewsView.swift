//
//  DetailsReviewsView.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct DetailsReviewsView: View {
	
    var body: some View {
		HStack(content: {
			RatingsView()
			
			Spacer()
			
			SizesView()
		}).zIndex(1)
			.foregroundColor(.gray)
			.padding(
				EdgeInsets(
					top: -20,
					leading: 0,
					bottom: 10,
					trailing: 0
				)
			)
    }
	
}

#Preview {
    DetailsReviewsView()
}
