//
//  RoundedIconView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/7/21.
//

import SwiftUI

struct RoundedIconView: View {
    var body: some View {
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
    }
}

struct RoundedIconView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedIconView()
    }
}
