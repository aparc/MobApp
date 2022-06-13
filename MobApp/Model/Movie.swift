//
//  Movie.swift
//  MobApp
//
//  Created by Андрей on 07.06.2022.
//

import Foundation

struct Movie: Identifiable {
	let id = UUID()
	let name: String
	let imageName: String
}
