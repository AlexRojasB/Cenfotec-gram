//
//  ActionableBarView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/29/21.
//

import SwiftUI

struct ActionableBarView: View {
    let likeNumnber: Int
    let commentNumber: Int
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.red)
                Text("\(likeNumnber)")
                    .foregroundColor(.gray)
            }
            HStack {
                Image(systemName: "message.circle.fill")
                    .foregroundColor(Color.gray)
                Text("\(commentNumber)")
                    .foregroundColor(.gray)
            }
            
            Image(systemName: "paperplane")
                .foregroundColor(Color.gray)
                .padding(.horizontal, 10)
            Image(systemName: "bookmark")
                .foregroundColor(Color.gray)
                .padding(.horizontal, 10)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white))
    }
}

struct ActionableBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActionableBarView(likeNumnber: 100, commentNumber: 342)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
