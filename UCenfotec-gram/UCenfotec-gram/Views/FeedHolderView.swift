//
//  FeedHolder.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/28/21.
//

import SwiftUI

struct FeedHolderView: View {
    var body: some View {
        ZStack {
            Image("woman1")
                .resizable()
                .scaledToFill()
                .cornerRadius(25)
            
            VStack() {
                HStack {
                    ProfileDetailView()
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color.white)
                        .shadow(color: Color.black, radius: 8, x: 2, y: 2)
                }
                .padding(.horizontal,6)
                .padding(.vertical, 6)
                .background(RoundedRectangle(cornerRadius: 40).fill(Color.white.opacity(0.265)))
                
                .padding()
                Spacer()
                ActionableBarView()
                    .padding()
                //Spacer()
            }
        }
    }
}

struct FeedHolderView_Previews: PreviewProvider {
    static var previews: some View {
        FeedHolderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
