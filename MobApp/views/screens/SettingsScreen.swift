//
//  SettingsScreen.swift
//  MobApp
//
//  Created by Андрей on 06.06.2022.
//

import SwiftUI

struct SettingsScreen: View {
	
	@State private var isShowingSheet: Bool = false
	
	var body: some View {
		Button("Open modal") {
			isShowingSheet.toggle()
		}.sheet(isPresented: $isShowingSheet) {
			VStack {
				Text("Modal view")
					.font(.largeTitle)
				Spacer()
			}
			.padding()
		}
	}
}

struct SettingsScreen_Previews: PreviewProvider {
	static var previews: some View {
		SettingsScreen()
	}
}
