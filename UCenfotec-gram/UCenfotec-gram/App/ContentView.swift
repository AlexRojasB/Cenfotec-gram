//
//  ContentView.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack {
                
            }
            .navigationBarTitle("Cenfogram")
            .navigationBarItems(trailing: Image(systemName: "message.fill"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
