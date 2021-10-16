//
//  FeedHolder.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/28/21.
//

import SwiftUI

struct FeedHolderView: View {
    let feed: FeedModel
    
    var body: some View {
        ZStack {
            if let bannerURL = URL(string: feed.picture) {
                Image("woman").data(url: bannerURL)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 600)
                    .cornerRadius(25)
            }
            VStack() {
                HStack {
                    ProfileDetailView(feed: feed)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .frame(width: 20, height: 50)
                        .rotationEffect(.degrees(-90))
                        .foregroundColor(.secondary)
                        .shadow(color: Color.black, radius: 8, x: 2, y: 2)
                        .padding(.horizontal)
                    
                }
                .padding(.horizontal,6)
                .padding(.vertical, 6)
                .background(RoundedRectangle(cornerRadius: 40).fill(Color.gray.opacity(0.65)))
                
                .padding()
                Spacer()
                ActionableBarView(likeNumnber: feed.likes, commentNumber: feed.comments.count)
                    .padding()
                Spacer()
            }
        }
    }
}
