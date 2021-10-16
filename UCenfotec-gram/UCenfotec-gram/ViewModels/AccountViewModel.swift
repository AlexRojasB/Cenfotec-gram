//
//  AccountViewModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/15/21.
//

import Foundation
class AccountViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var nick: String = ""
    @Published var isLoading: Bool = false
    var userModel: UserModel?
    var loginDisabled: Bool {
        email.isEmpty || password.isEmpty
    }
    
    func LoginAccount(completion: @escaping (Bool) -> Void) {
        if !email.isEmpty && !password.isEmpty {
            isLoading = true
            let user: UserModel = UserModel( nick: "", email: self.email, password: self.password)
            let urlString = API.postLoginUser(user: user)
            
            NetworkManager<UserModel>.post(for: urlString) {
                (result) in
                switch result {
                case .success(let response):
                    self.userModel = response
                    completion(true)
                case .failure(let error):
                    print(error)
                    completion(false)
                }
                DispatchQueue.main.async {
                    self.isLoading = false
                }
                
            }
        }
    }
    
    
    
    func SignInAccount(completion: @escaping (Bool) -> Void) {
        if !email.isEmpty && !password.isEmpty && !nick.isEmpty{
            isLoading = true
            let user: UserModel = UserModel( nick: self.nick, email: self.email, password: self.password)
            let urlString = API.postSignInUser(user: user)
            
            NetworkManager<String>.post(for: urlString) {
                (result) in
                switch result {
                case .success(let response):
                    self.userModel?.id = response
                    completion(true)
                case .failure(let error):
                    print(error)
                    completion(false)
                }
                DispatchQueue.main.async {
                    self.isLoading = false
                }
                
            }
        }
    }
    
}
