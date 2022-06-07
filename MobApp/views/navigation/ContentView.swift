//
//  ContentView.swift
//  MobApp
//
//  Created by Андрей on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
	
	@State var tabSelection: Int = 0
	@StateObject var movieViewModel: MovieListViewModel = .init()
	
    var body: some View {
		TabView(selection: $tabSelection) {
			HomeScreen(movieViewModel: movieViewModel, tabSelection: $tabSelection)
				.tag(0)
				.tabItem {
					Label("Home", systemImage: "house.fill")
				}
			
			MovieListScreen(movieViewModel: movieViewModel)
				.tag(1)
				.tabItem {
					Label("Library", systemImage: "film.fill")
				}
			
			SettingsScreen()
				.tag(2)
				.tabItem {
					Label("Settings", systemImage: "gearshape.fill")
				}
		}
    } // body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
