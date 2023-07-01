//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Em bé cute on 5/30/23.
//

import SwiftUI
struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoginSuccess: Bool = false
    
    @ObservedObject private var viewModel:LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button(action: {
                viewModel.login(username: username, password: password) { isSuccess in
                    isLoginSuccess = isSuccess
                }
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .navigationTitle("Login")
        .alert(isPresented: $isLoginSuccess) {
            Alert(title: Text("Success"), message: Text("You have successfully logged in."), dismissButton: .default(Text("OK")))
        }
    }
}
