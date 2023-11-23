//
//  HomeNavigationView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct HomeNavigationView: View {
	
    var body: some View {
		HStack(content: {
			Image(systemName: "magnifyingglass")
				.fitScreen()
				.frame(
					width: 30,
					height: 30
				)
			
			Spacer()
			
			HStack(content: {
				Text("TOUCH")
					.fontWeight(.black)
					.font(.title2)
				
				Image("logo-dark")
					.fitScreen()
					.frame(
						width: 30,
						height: 30
					)
				
				Text("DOWN")
					.fontWeight(.black)
					.font(.title2)
			})
			
			Spacer()
			
			ZStack {
				Image(systemName: "cart")
					.fitScreen()
					.frame(
						width: 30,
						height: 30
				)
				
				Circle()
					.fill(Color.red)
					.frame(
						width: 15,
						height: 15
					)
					.offset(
						x: 10,
						y: -10
					)
			}
		}).modifier(NavigationOffsetModifier())
			.background(Color.white)
			.overlay(
				Rectangle().stroke(
					Color
						.gray
						.opacity(0.2),
					lineWidth: 1
				)
			)
    }
	
}

#Preview {
    HomeNavigationView()
}
