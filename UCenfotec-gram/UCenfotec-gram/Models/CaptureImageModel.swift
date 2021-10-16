//
//  CaptureImageView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/16/21.
//

import Foundation
import SwiftUI
struct CapdtureImageView {
    /// MARK: - Properties
       @Binding var isShown: Bool
       @Binding var image: Image?
       
       func makeCoordinator() -> Coordinator {
         return Coordinator(isShown: $isShown, image: $image)
       }
}
