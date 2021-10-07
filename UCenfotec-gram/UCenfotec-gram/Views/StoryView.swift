//
//  StoryView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/29/21.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            ZStack {
               
                RoundedRectangle(cornerRadius: 18, style: .circular)
                    .fill(Color.blue)
                         .frame(width: 60, height: 60)
                     
                RoundedRectangle(cornerRadius: 18, style: .circular)
                    .fill(Color.secondary)
                    .frame(width: 58, height: 58)
                     
                     
                     Image("woman1")
                         .resizable()
                         .offset(x: 0, y: 10)
                         .scaledToFill()
                         .frame(width: 55, height: 55)
                         .clipShape(RoundedRectangle(cornerRadius: 18, style: .circular))
            }//: ZStack
            Text("Lauren")
                .font(.footnote)
                .foregroundColor(.secondary)
        }//: VStack
       
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
