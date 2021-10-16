//
//  PreviewPostFeedView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/16/21.
//

import SwiftUI
struct CaptureImageView {
    /// MARK: - Properties
       @Binding var isShown: Bool
       @Binding var image: Image?
       
       func makeCoordinator() -> Coordinator {
         return Coordinator(isShown: $isShown, image: $image)
       }
}


struct PreviewPostFeedView: View {
    @State var image: Image? = nil
    @State var showCaptureImageView: Bool = false
    var body: some View {
        VStack {
            Image("woman1")
                .resizable()
                .scaledToFit()
                .cornerRadius(28)
            Spacer()
            Button(action: {
                self.showCaptureImageView.toggle()
            }) {
                Text("Select picture")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                            .fill(.blue))
            
            Button(action: {
            }) {
                Text("Upload picture")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10   , style: .continuous)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.secondary))
            if (showCaptureImageView) {
                    CaptureImageView(isShown: $showCaptureImageView, image: $image)
                  }
        }
        .padding()
    }
}

struct PreviewPostFeedView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewPostFeedView()
    }
}
