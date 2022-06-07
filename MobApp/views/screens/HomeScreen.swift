//
//  HomeScreen.swift
//  MobApp
//
//  Created by Андрей on 06.06.2022.
//

import SwiftUI

struct HomeScreen: View {
	
	@ObservedObject var movieViewModel: MovieListViewModel
	@Binding var tabSelection: Int
	
	var body: some View {
		Button("Show movie list", action: openMovieDetails)
		.font(.largeTitle)
		.padding()
		.foregroundColor(.white)
		.background(Color.orange)
		.cornerRadius(10)
		.shadow(color: .orange.opacity(0.5), radius: 15, x: 0, y: 10)
	} // body
	
	func openMovieDetails() {
		tabSelection = 1
		movieViewModel.selectedMovie = movieViewModel.movies.randomElement() ?? movieViewModel.movies[0]
		movieViewModel.movieDetailsPresented = true
	}
}

struct HomeScreen_Previews: PreviewProvider {
	static var previews: some View {
		HomeScreen(movieViewModel: MovieListViewModel(), tabSelection: .constant(0))
	}
}
