//
//  PDFKitView.swift
//  CaseStudy
//
//  Created by John Rey on 11/16/23.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
	var document: PDFDocument

	func makeUIView(context: Context) -> PDFView {
		let pdfView = PDFView()
		
		pdfView.autoScales = true
		pdfView.document = document
		
		return pdfView
	}

	func updateUIView(_ uiView: PDFView, context: Context) { }
}

struct PDFViewer: View {
	let pdfDocument = PDFDocument(url: Bundle.main.url(
			forResource: "test",
			withExtension: "pdf"
		)!
	)!

	var body: some View {
		PDFKitView(document: pdfDocument)
	}
}

#Preview {
	PDFViewer()
}
