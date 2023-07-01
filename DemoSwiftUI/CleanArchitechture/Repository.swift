//
//  Repository.swift
//  DemoSwiftUI
//
//  Created by Em bé cute on 7/1/23.
//

protocol UserRepository {
    func login(username: String, password: String, completion: @escaping (User?) -> Void)
}

class UserRepositoryImpl: UserRepository {
    func login(username: String, password: String, completion: @escaping (User?) -> Void) {
        // Giả sử ta lấy thông tin user từ cơ sở dữ liệu
        // Trong thực tế, ta có thể sử dụng các kỹ thuật lưu trữ khác như mạng
        let user = User(id: 1, username: "john.doe", password: "password")
        if user.username == username && user.password == password {
            completion(user)
        } else {
            completion(nil)
        }
    }
}
