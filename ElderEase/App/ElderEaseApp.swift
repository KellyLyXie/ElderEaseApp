//
//  ElderEaseApp.swift
//  ElderEase
//
//  Created by Huixin Pan on 6/4/24.
//

import SwiftUI

@main
struct ElderEaseApp: App {
    @StateObject var viewModel = AuthViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
