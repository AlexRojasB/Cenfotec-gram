//
//  StoryView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/29/21.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
     //   Image("woman1")
     //       .resizable()
     //       .scaledToFit()
     //       .clipShape(Circle())
     //       .overlay(Circle().stroke(Color.gray, lineWidth: 8))
        ZStack {
            Circle()
                     .fill(Color.gray)
                     .frame(width: 50, height: 50)
                 
                Circle()
                .stroke(Color.accentColor,lineWidth: 1.5)
                .frame(width: 50.5, height: 50.5)
                 
                 
                 Image("woman1")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 48)
                 .clipShape(Circle())
        }
       
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
