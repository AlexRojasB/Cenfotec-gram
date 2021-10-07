//
//  MainView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/6/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName:"house.fill")
                }//: TabItem
            ProfileView()
                .tabItem {
                    Image(systemName: "plus.diamond")
                }//: TabItem
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }//: TabItem
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
