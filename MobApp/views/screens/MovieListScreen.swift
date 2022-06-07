//
//  MovieListScreen.swift
//  MobApp
//
//  Created by Андрей on 06.06.2022.
//

import SwiftUI


struct MovieListScreen: View {
	
	@ObservedObject var movieViewModel: MovieListViewModel
	
	var body: some View {
		NavigationView {
			VStack {
				NavigationLink (isActive: $movieViewModel.movieDetailsPresented) {
					MovieDetailsView(movie: movieViewModel.selectedMovie)
				} label: {
					EmptyView()
				}
				
				List {
					ForEach(movieViewModel.movies) { movie in
						Button {
							movieViewModel.selectedMovie = movie
							movieViewModel.movieDetailsPresented = true
						} label: {
							Text(movie.name)
								.foregroundColor(.black)
						}
					}
				}
				.listStyle(.insetGrouped)
			}
			.navigationTitle("Movies")
		}
		.navigationViewStyle(.columns)
	} // body
	
}



struct MovieListScreen_Previews: PreviewProvider {
	static var previews: some View {
		MovieListScreen(movieViewModel: MovieListViewModel())
	}
}
