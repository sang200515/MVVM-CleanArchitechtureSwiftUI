//
//  ViewModel.swift
//  DemoSwiftUI
//
//  Created by Em bé cute on 7/1/23.
//

import Foundation
class LoginViewModel: ObservableObject {
    private let loginUseCase: LoginUseCase
    
    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
    }
    
    func  login(username: String, password: String, completion: @escaping (Bool) -> Void) {
        loginUseCase.execute(username: username, password: password) { user in
            if let _ = user {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
