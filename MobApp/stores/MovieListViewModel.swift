//
//  MovieListViewModel.swift
//  MobApp
//
//  Created by Андрей on 07.06.2022.
//

import SwiftUI

final class MovieListViewModel: ObservableObject {
	
	let movies = [
		Movie(name: "Forrest Gump", imageName: "forrest_gump"),
		Movie(name: "The Godfather", imageName: "godfather"),
		Movie(name: "Joker", imageName: "joker"),
		Movie(name: "Toy Story", imageName: "toy_story"),
		Movie(name: "The Shining", imageName: "shining"),
		Movie(name: "Sherlock Holmes", imageName: "sherlock_holmes"),
		Movie(name: "The Matrix", imageName: "matrix"),
		Movie(name: "Gone Girl", imageName: "gone_girl"),
	]
	
	@Published var selectedMovie: Movie
	@Published var movieDetailsPresented: Bool = false
	
	init() {
		selectedMovie = movies[0]
	}
	
}

