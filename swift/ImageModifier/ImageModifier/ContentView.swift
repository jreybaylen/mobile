//
//  ContentView.swift
//  ImageModifier
//
//  Created by John Rey on 10/5/23.
//

import SwiftUI

extension Image {
	func imageModifier() -> some View {
		self
			.resizable()
			.scaledToFit()
	}
	
	func iconModifier() -> some View {
		self.imageModifier()
			.foregroundStyle(.purple)
			.frame(maxWidth: 128)
			.opacity(0.5)
	}
}

struct ContentView: View {
	private let imageURL = "https://icon-library.com/images/swift-icon/swift-icon-10.jpg"
	
    var body: some View {
		AsyncImage(
			url: URL(string: imageURL),
			transaction: Transaction(
				animation: .spring(
					response: 0.5,
					dampingFraction: 0.5,
					blendDuration: 0.25
				)
			)
		) {
			phase in
			
			switch phase {
				case .success(let image):
					image.imageModifier()
						.transition(.scale)
				case .failure(_):
					Image(systemName: "ant.circle.fill").iconModifier()
				case .empty:
					Image(systemName: "photo.circle.fill").iconModifier()
				@unknown default:
					ProgressView()
			}
		}
		.padding(40)
    }
}

#Preview {
    ContentView()
}
