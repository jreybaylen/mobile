//
//  SourceLinkView.swift
//  Fructus
//
//  Created by John Rey on 11/7/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
		GroupBox() {
			HStack {
				Text("Content Source")
				
				Spacer()
				
				Link(
					destination: URL(string: "https://wikipedia.com")!,
					label: {
						Text("Wikipedia")
							.font(.system(size: 16, design: .monospaced))
							.fontWeight(.medium)
					}
				)
				
				Image(systemName: "arrow.up.right.square")
			}
		}
    }
}

#Preview {
    SourceLinkView()
		.padding(.horizontal, 20)
}
