//
//  BrowseView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct BrowseView: View {
	
	private let animals: [ Animal ] = Bundle.main.decode("animals.json")
	
	@State private var isListView = true
	@State private var gridColumn = 1
	@State private var gridIcon = "rectangle.grid.1x2"
	@State private var gridLayout: [ GridItem ] = [ GridItem(.flexible()) ]
	
	func gridSwitch() {
		gridLayout = Array(
			repeating: .init(),
			count: gridColumn % 3 + 1
		)
		gridColumn = gridLayout.count
		
		switch gridColumn {
			case 2:
				gridIcon = "square.grid.2x2"
			case 3:
				gridIcon = "square.grid.3x2"
			default:
				gridIcon = "rectangle.grid.1x2"
		}
	}
	
	var body: some View {
		NavigationView(content: {
			Group(content: {
				if isListView {
					AnimalsView(animals: animals)
				} else {
					AnimalsGridView(
						animals: animals,
						gridLayout: gridLayout
					)
				}
			}).listStyle(PlainListStyle())
				.navigationTitle("Africa")
				.toolbar {
					ToolbarItem(
						placement: .topBarTrailing,
						content: {
							HStack(
								alignment: .center,
								spacing: 10,
								content: {
									Button(
										action: {
											gridSwitch()
											isListView = false
										},
										label: {
											Image(systemName: gridIcon)
												.fitToScreen()
												.foregroundColor(isListView ? .white : .accentColor)
										}
									)
									
									Button(
										action: {
											isListView = true
										},
										label: {
											Image(systemName: "square.fill.text.grid.1x2")
												.fitToScreen()
												.foregroundColor(isListView ? .accentColor : .white)
										}
									)
								}
							)
						}
					)
				}
		})
    }
	
}

#Preview {
    BrowseView()
}
