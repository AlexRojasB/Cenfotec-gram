//
//  ProfileDetailView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/28/21.
//

import SwiftUI

struct ProfileDetailView: View {
    var body: some View {
        HStack {
            Image("woman2")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Lauren Cox")
                    .font(.title2)
                    .foregroundColor(Color.primary.opacity(0.65))
                    .fontWeight(.heavy)
                Text("Paris, France")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
