//
//  WelcomeView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/7/21.
//

import SwiftUI

struct WelcomeView: View {
    @State private var action: Int? = 0
    @EnvironmentObject var authentication: Authentication
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginView().environmentObject(authentication), tag: 1, selection: $action) {
                                   EmptyView()
                               }
                NavigationLink(destination: SigninView().environmentObject(authentication), tag: 2, selection: $action) {
                                   EmptyView()
                               }
                Image("welcomeHeader")
                    .resizable()
                    .frame(height: 400)
                    .scaledToFit()
                VStack(spacing: 20) {
                    
                    HStack {
                        Text("Be Social.")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        Spacer()
                    }//: HStack
                    Text("Knight Rider a shadowy flight into the dangerous world of a man who does not exist.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                    VStack(spacing: 20) {
                        
                        Button(action: {
                            self.action = 1
                        }) {
                            Text("LOGIN")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                        .fill(.blue))
                        
                        Button(action: {
                            self.action = 2
                        }) {
                            Text("SIGN UP")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.secondary))
                        
                        Text("Or login/signup via...")
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
                        }
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

struct WelcomeView_Previews: PreviewProvider {
   
    static var previews: some View {
        WelcomeView()
    }
}
