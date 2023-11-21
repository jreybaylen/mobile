//
//  GalleryView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct GalleryView: View {
	
	private let animals: [ Animal ] = Bundle.main.decode("animals.json")
	
	@State private var gridLayout: [ GridItem ] = [
		GridItem(.flexible())
	]
	@State private var gridColumn = 3.0
	@State private var selectedAnimal = "lion"
	
	func gridSwitch() {
		gridLayout = Array(
			repeating: .init(.flexible()),
			count: Int(gridColumn)
		)
	}
    
	var body: some View {
		ScrollView(
			.vertical,
			showsIndicators: false,
			content: {
				VStack(
					alignment: .center,
					spacing: 30,
					content: {
						Image(selectedAnimal)
							.fitToScreen()
							.clipShape(Circle())
							.overlay(
								Circle()
									.stroke(
										.white,
										lineWidth: 8.0
									)
							)
						
						Slider(
							value: $gridColumn,
							in: 2...3,
							step: 1
						).padding(.horizontal)
							.onChange(
								of: gridColumn,
								perform: {
									value in
									
									gridSwitch()
								}
							)
						
						LazyVGrid(
							columns: gridLayout,
							spacing: 24,
							content: {
								ForEach(
									animals,
									content: {
										animal in
										
										Image(animal.image)
											.fitToScreen()
											.clipShape(Circle())
											.overlay(
												Circle()
													.stroke(
														.white,
														lineWidth: 1
													)
											)
											.onTapGesture(perform: {
												selectedAnimal = animal.image
											})
									}
								)
							}
						).animation(.easeIn)
							.onAppear(perform: {
								gridSwitch()
							})
					}
				).padding(
					EdgeInsets(
						top: 60,
						leading: 30,
						bottom: 60,
						trailing: 30
					)
				)
			}
		).frame(
			maxWidth: .infinity,
			maxHeight: .infinity
		).background(MotionAnimationView())
    }
	
}

#Preview {
    GalleryView()
}
