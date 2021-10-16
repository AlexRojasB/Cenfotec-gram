//
//  ProfileDetailView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/28/21.
//

import SwiftUI

struct ProfileDetailView: View {
    let feed: FeedModel
    var body: some View {
        HStack {
            if let bannerURL = URL(string: feed.owner.picture) {
                Image(systemName: "square.fill").data(url: bannerURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            }
            VStack(alignment: .leading) {
                Text(feed.owner.name)
                    .font(.title2)
                    .foregroundColor(Color.primary.opacity(0.65))
                    .fontWeight(.heavy)
                Text(feed.owner.location)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}
