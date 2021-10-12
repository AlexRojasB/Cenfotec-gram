//
//  ContentView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        HStack {
                        RoundedIconView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        }//: VStack
                    }//: HStack
                }//: ScrollView
                .padding(.horizontal)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: -(UIScreen.main.bounds.height / 4.5)) {
                        FeedHolderView()
                        FeedHolderView()
                        FeedHolderView()
                        FeedHolderView()
                    }//: VStack
                }.padding(.horizontal)
            }//: VStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Cenfogram")
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "message.fill")
                    }//: HStack
                }//: ToolbarItem
            }//: Toolbar
        }//: NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
