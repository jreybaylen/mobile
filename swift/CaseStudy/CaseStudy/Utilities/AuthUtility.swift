//
//  AuthUtility.swift
//  CaseStudy
//
//  Created by John Rey on 11/16/23.
//

import LocalAuthentication

class Authentication: ObservableObject {
	@Published var isLoggedIn = false
	
	func usingBiometrics() {
		var error: NSError?
		
		let context = LAContext()
		
		if context.canEvaluatePolicy(
			.deviceOwnerAuthenticationWithBiometrics,
			error: &error
		) {
			context.evaluatePolicy(
				.deviceOwnerAuthenticationWithBiometrics,
				localizedReason: "We need to unlock your data."
			) {
				success, _ in
				
				DispatchQueue.main.async {
					if success {
						self.isLoggedIn.toggle()
					}
				}
			}
		}
	}
}
