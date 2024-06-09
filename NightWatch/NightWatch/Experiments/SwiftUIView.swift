//
//  SwiftUIView.swift
//  NightWatch
//
//  Created by Akmal on 2024-06-08.
//

import SwiftUI

// A computed property named body that returns some view should be there inorder to build the user interface
// This can be ensured with the "View" protocol!
struct SwiftUIView: View {
    // This is a computed property!
    // Learn "Opaque and Boxed Types" in Swift to learn more about "some" keyword.
    var body: some View { // This doesn't mean storing, but it calculates the value
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) // from Swift 5, we don't need a return keyword!
        // Offering the entire Safe Area
        VStack {
            Circle()
            Rectangle()
            HStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                Text("Hello World")
            }
        }
    }
}

//struct SomeView {
//    
//}

#Preview {
//    SomeView() Wont work!
    SwiftUIView()
}
