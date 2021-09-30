//
//  ActionableBarView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/29/21.
//

import SwiftUI

struct ActionableBarView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.red)
                Text("3.9k")
                    .foregroundColor(.gray)
            }
            HStack {
                Image(systemName: "message.circle.fill")
                    .foregroundColor(Color.gray)
                Text("1.9k")
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
            ActionableBarView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            .padding()
            ActionableBarView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
