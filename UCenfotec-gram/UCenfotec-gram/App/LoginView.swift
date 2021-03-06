//
//  LoginView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/7/21.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var loginVM = AccountViewModel()
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        NavigationView {
            VStack {
                Image("loginHeader")
                    .resizable()
                    .frame(height: 350)
                    .scaledToFit()
                VStack(spacing: 20) {
                    
                    HStack {
                        Text("Login")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        Spacer()
                    }//: HStack
                    VStack {
                        HStack {
                            Text("Username or Email")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Spacer()
                        }//: HStack
                        TextField("@ Email ID", text: $loginVM.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.secondary))
                        HStack {
                            Text("Password")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text("Forgot password?")
                                .font(.caption2)
                                .foregroundColor(.blue)
                        }//: HStack
                        SecureField("********", text: $loginVM.password)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.secondary))
                    }//: VStack
                    VStack(spacing: 20) {
                        if loginVM.isLoading {
                            ProgressView()
                        }
                        Button(action: {
                            loginVM.LoginAccount { success in
                                authentication.updateValidation(success: success)
                            }
                        }) {
                            Text("LOGIN")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                        .fill(.blue))
                        .disabled(loginVM.loginDisabled)
                        
                        Text("Or login with...")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        HStack {
                            Button(action: {}) {
                                Image("facebookIcon")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding()
                                    .padding(.horizontal, 50)
                            }
                            .background(Circle()
                                        
                                            .stroke(lineWidth: 0.45)
                                            .foregroundColor(.white)
                                            .shadow(color: .gray, radius: 1, x: 0, y: 0))
                            Button(action: {}) {
                                Image("googleIcon")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding()
                                    .padding(.horizontal, 50)
                            }
                            .background(Circle()
                                        
                                            .stroke(lineWidth: 0.45)
                                            .foregroundColor(.white)
                                            .shadow(color: .gray, radius: 1, x: 0, y: 0))
                        }//: HStack
                        Text("New member? Sign up")
                            .font(.footnote)
                    }//: VStack
                    .padding(.top, 30)
                    
                    
                }//: VStack
                .background(RoundedRectangle(cornerRadius: 30)
                                .fill(.white))
                .padding(.top, 30)
                .padding(.horizontal, 30)
                Spacer()
            }//: VStack
            .ignoresSafeArea()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
