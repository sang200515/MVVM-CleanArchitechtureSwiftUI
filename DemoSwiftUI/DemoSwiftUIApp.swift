//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Em bé cute on 5/30/23.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: LoginViewModel(loginUseCase: LoginUseCase(userRepository: UserRepositoryImpl())))
        }
    }
}
