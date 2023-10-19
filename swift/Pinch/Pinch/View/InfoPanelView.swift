//
//  InfoPanelView.swift
//  Pinch
//
//  Created by John Rey on 10/18/23.
//

import SwiftUI

struct InfoPanelView: View {
	let scale: CGFloat
	let offset: CGSize
	
	@State private var isInfoPanelVisible = false
	
    var body: some View {
		HStack {
			Image(systemName: "circle.circle")
				.symbolRenderingMode(.hierarchical)
				.resizable()
				.frame(width: 30, height: 30)
				.onLongPressGesture(
					minimumDuration: 1,
					perform: {
						withAnimation(.easeOut) {
							isInfoPanelVisible.toggle()
						}
					}
				)
			
			Spacer()
			
			HStack {
				Image(systemName: "arrow.up.left.and.arrow.down.right")
				Text("\(scale)")
				
				Spacer()
				
				Image(systemName: "arrow.left.and.right")
				Text("\(offset.width)")
				
				Spacer()
				
				Image(systemName: "arrow.up.and.down")
				Text("\(offset.height)")
				
				Spacer()
			}.font(.footnote)
				 .padding(8)
				 .background(.ultraThinMaterial)
				 .cornerRadius(8)
				 .frame(maxWidth: 420)
				 .opacity(isInfoPanelVisible ? 1 : 0)
		}
    }
}

#Preview {
	InfoPanelView(scale: 1, offset: .zero)
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
		.previewLayout(.sizeThatFits)
		.padding()
}
