//
//  DetailsQtyAndFavView.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import SwiftUI

struct DetailsQtyAndFavView: View {
	
	@State private var counter = 0
	
    var body: some View {
		HStack(content: {
			Button(
				action: {
					if counter > 0 {
						counter -= 1
					}
				},
				label: {
					Image(systemName: "minus.circle")
				}
			)
			
			Text("\(counter)")
				.fontWeight(.semibold)
				.frame(minWidth: 36)
			
			Button(
				action: {
					counter += 1
				},
				label: {
					Image(systemName: "plus.circle")
				}
			)
			
			Spacer()
			
			Button(
				action: {
					
				},
				label: {
					Image(systemName: "heart.circle")
						.foregroundColor(.pink)
				}
			)
		}).font(.title)
			.foregroundColor(.black)
			.imageScale(.large)
			.padding(
				.top,
				16
			)
    }
	
}

#Preview {
    DetailsQtyAndFavView()
}
