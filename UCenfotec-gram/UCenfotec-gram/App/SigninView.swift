//
//  SigninView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/7/21.
//

import SwiftUI

struct SigninView: View {
    @State var email: String = ""
    var body: some View {
        VStack {
            Image("woman2")
                .resizable()
                .frame(height: 350)
                .scaledToFit()
            VStack(spacing: 10) {
                
                HStack {
                    Text("Sign Up")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    Spacer()
                }//: HStack
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
                Text("Or Register with email...")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                VStack(spacing:12) {
                    HStack {
                        Text("Name")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                    }//: HStack
                    TextField("Alexander Rojas", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.secondary))
                    HStack {
                        Text("Username or Email")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                    }//: HStack
                    TextField("@ Email ID", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.secondary))
                    HStack {
                        Text("Password")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                       
                    }//: HStack
                    TextField("********", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.secondary))
                }//: VStack
                VStack(spacing: 20) {
                    Button(action: {}) {
                        Text("SIGN UP")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                    .fill(.blue))
                    Text("Already a member? Login")
                        .font(.footnote)
                }//: VStack
                .padding(.top, 10)
                
            }//: VStack
            .background(RoundedRectangle(cornerRadius: 30)
                            .fill(.white))
            .padding(.horizontal, 30)
            Spacer()
        }//: VStack
        .ignoresSafeArea()
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
