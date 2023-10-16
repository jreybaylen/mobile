//
//  RingsView.swift
//  Workbook
//
//  Created by John Rey on 10/16/23.
//

import SwiftUI

struct RingsView: View {
    var body: some View {
		ZStack {
			Circle()
				.stroke(
					.white.opacity(0.2),
					lineWidth: 40
				)
				.frame(
					width: 260,
					height: 260,
					alignment: .center
				)
			
			Circle()
				.stroke(
					.white.opacity(0.2),
					lineWidth: 80
				)
				.frame(
					width: 260,
					height: 260,
					alignment: .center
				)
		}
    }
}

#Preview {
	ZStack {
		Color.customBlue
			.ignoresSafeArea()
		
		RingsView()
	}
}
