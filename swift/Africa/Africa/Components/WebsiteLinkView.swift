//
//  WebsiteLinkView.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

import SwiftUI

struct WebsiteLinkView: View {
	
	let url: String
	let label: String
	
    var body: some View {
		GroupBox(content: {
			HStack(content: {
				Image(systemName: "globe")
				
				Text("Wikipedia")
				
				Spacer()
				
				Group(content: {
					Image(systemName: "arrow.up.right.square")
					
					Link(
						destination: URL(string: url)!,
						label: {
							Text(label.capitalized)
						}
					)
				}).foregroundColor(.accentColor)
			})
		})
    }
	
}

#Preview {
	WebsiteLinkView(
		url: "https://en.wikipedia.org/wiki/Lion",
		label: "Lion"
	)
}
