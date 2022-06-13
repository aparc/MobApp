//
//  MovieDetailsView.swift
//  MobApp
//
//  Created by Андрей on 07.06.2022.
//

import SwiftUI

struct MovieDetailsView: View {
	
	var movie: Movie
	
	var body: some View {
		VStack {
			ImageView(uiImage: loadImage(name: movie.imageName))
				.frame(maxWidth: 400, maxHeight: 400)
			Text(movie.name)
				.font(.largeTitle)
		}
		.padding()
	} // body
	
	func loadImage(name: String) -> UIImage {
		if let uiImage = UIImage(named: name) {
			return uiImage
		} else {
			fatalError()
		}
	}
	
}
