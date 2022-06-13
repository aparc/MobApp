//
//  ImageView.swift
//  MobApp
//
//  Created by Андрей on 07.06.2022.
//

import SwiftUI

struct ImageView: UIViewRepresentable {
	
	var uiImage: UIImage
	
	func makeUIView(context: Context) -> UIImageView {
		let imageView = UIImageView(image: uiImage)
		imageView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
		imageView.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
		imageView.contentMode = .scaleAspectFit
		return imageView
	}
	
	func updateUIView(_ uiView: UIImageView, context: Context) { }
	
}
