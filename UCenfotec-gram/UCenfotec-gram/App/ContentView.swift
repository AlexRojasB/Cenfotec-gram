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
                        VStack {
                            ZStack {
                               
                                     
                                RoundedRectangle(cornerRadius: 18, style: .circular)
                                    .strokeBorder(lineWidth: 1, antialiased: true)
                                    .foregroundColor(.secondary)
                                    .frame(width: 58, height: 58)
                                     Image(systemName: "plus")
                                         .frame(width: 55, height: 55)
                                         .clipShape(RoundedRectangle(cornerRadius: 18, style: .circular))
                                         .foregroundColor(.secondary)
                            }//: ZStack
                            Text("My Story")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }//: VStack
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                        StoryView()
                    }//: HStack
                }//: ScrollView
                .padding()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: -(UIScreen.main.bounds.height / 4.5)) {
                        FeedHolderView()
                        FeedHolderView()
                        FeedHolderView()
                        FeedHolderView()
                    }
                }.padding()
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
