//
//  ProfileView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/29/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView() {
            VStack(spacing: 6) {
                HStack(alignment: .top) {
                    StoryView()
                    Spacer()
                   DataView(title: "39", data: "Posts")
                        .padding(.top, 10)
                    Spacer()
                    DataView(title: "54.4k", data: "Followers")
                         .padding(.top, 10)
                    Spacer()
                    DataView(title: "29", data: "Following")
                         .padding(.top, 10)
                }//: HStack
                HStack {
                    Text("Lauren Crox | Designer")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    Spacer()
                }//: HStack
                    
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Shaping ideas into products\nExplore the world of design with me\nNewPost every week")
                            .font(.callout)
                            .foregroundColor(.primary.opacity(0.7))
                        Text("Followed by Lincy, Tracy and 14 others")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }//: VStack
                    Spacer()
                }//: HStack
                
                HStack(spacing: 10) {
                    Button(action: {}) {
                        Text("Contact")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 30)
                    }
                    .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                    .fill(.blue))
                    Button(action: {}) {
                        Text("Edit Profile")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 30)
                    }
                    .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.secondary))
                    Button(action: {}) {
                        Text("Insights")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 30)
                    }
                    .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.secondary))
                    
                }//: HStack
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                        RoundedIconView()
                    }
                }
                // Staggered View https://www.youtube.com/watch?v=VrwINubmq5g&ab_channel=Kavsoft
                Spacer()
            }//: VStack
            .padding(20)
            .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("_laruenCrox32")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.secondary)
                            Image(systemName: "chevron.down.circle")
                                .foregroundColor(.secondary)
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                        }//: HStack
                    }//: ToolbarItem
                }//: Toolbar
        }//: NavigationView
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
