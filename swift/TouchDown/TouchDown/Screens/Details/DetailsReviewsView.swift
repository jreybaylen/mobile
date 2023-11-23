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
					leading: 16,
					bottom: 10,
					trailing: 16
				)
			)
    }
	
}

#Preview {
    DetailsReviewsView()
}
