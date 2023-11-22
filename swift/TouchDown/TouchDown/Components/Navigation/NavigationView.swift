//
//  NavigationView.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
		HStack(content: {
			Image(systemName: "magnifyingglass")
				.fitScreen()
				.frame(
					width: 30,
					height: 30
				)
			
			Spacer()
			
			NavigationLogoView()
			
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
		}).padding(.bottom)
			.padding(
				.top,
				UIApplication.shared.windows.first?.safeAreaInsets.top
			)
			.padding(
				.horizontal,
				16
			)
			.background(Color.white)
			.overlay(
				Rectangle().stroke(
					Color.gray.opacity(0.2),
					lineWidth: 1
				)
			)
    }
}

#Preview {
    NavigationView()
}
