//
//  ContentView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var feedVM = FeedViewModel()
    @EnvironmentObject var authentication: Authentication

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
                        
                    LazyVStack(spacing: -(UIScreen.main.bounds.height / 4.5)) {
                        if self.feedVM.isLoading {
                            ProgressView()
                        }
                        ForEach(feedVM.feeds) { feed in
                            FeedHolderView(feed: feed)
                        }
                       
                    }//: VStack
                }.padding(.horizontal)
                    .onAppear(perform: {
                        feedVM.loadFeeds()
                    })
            }//: VStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Cenfogram")
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                        Button {
                            feedVM.cleanToken{ success in
                                authentication.updateValidation(success: success)
                            }
                        } label: {
                            Text("Logout")
                                .font(.footnote)
                                .foregroundColor(.blue)
                        }

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
