//
//  UCenfotec_gramApp.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/9/21.
//

import SwiftUI

@main
struct UCenfotec_gramApp: App {
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            let defaults = UserDefaults.standard
            let token = defaults.string(forKey: "Token")
            
            if !(token?.isEmpty ?? true) || authentication.isValidated {
                MainView().environmentObject(authentication)
            } else {
                WelcomeView()
                    .environmentObject(authentication)
            }
            
        }
    }
}
