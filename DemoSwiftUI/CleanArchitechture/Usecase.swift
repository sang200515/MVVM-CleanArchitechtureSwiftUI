//
//  Usecase.swift
//  DemoSwiftUI
//
//  Created by Em bé cute on 7/1/23.
//

import Foundation

class LoginUseCase {
    private let userRepository: UserRepository
    
    init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    func execute(username: String, password: String, completion: @escaping (User?) -> Void) {
        userRepository.login(username: username, password: password, completion: completion)
    }
}
