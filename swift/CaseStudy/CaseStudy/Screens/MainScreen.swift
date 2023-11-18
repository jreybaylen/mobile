//
//  MainScreen.swift
//  CaseStudy
//
//  Created by John Rey on 11/16/23.
//

import SwiftUI

struct MainScreen: View {
	@StateObject private var auth = Authentication()
	
	var body: some View {
		VStack {
			if auth.isLoggedIn {
				PDFViewer()
			} else {
				Text("Unlock the App using Biometrics")
			}
		}
		.padding()
		.onAppear(perform: auth.usingBiometrics)
	}
}

#Preview {
    MainScreen()
}
