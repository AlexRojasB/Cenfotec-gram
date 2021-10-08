//
//  DataView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/7/21.
//

import SwiftUI

struct DataView: View {
    // MARK: - Properties
    let title: String
    let data: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            Text(title)
                .font(.title3)
                .fontWeight(.heavy)
            Text(data)
                .font(.footnote)
                .foregroundColor(.secondary)
        }//: VStack
       
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView(title: "39", data: "Posts")
    }
}
