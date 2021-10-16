//
//  MainView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/6/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        TabView {
            ContentView()
                .environmentObject(authentication)
                .tabItem {
                    Image(systemName:"house.fill")
                }//: TabItem
            PreviewPostFeedView()
                .tabItem {
                    Image(systemName: "plus.diamond")
                }//: TabItem
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }//: TabItem
        }//: TabView
        .onAppear() {
            UITabBar.appearance().backgroundColor = .white
            UITabBar.appearance().barTintColor = .secondaryLabel
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
