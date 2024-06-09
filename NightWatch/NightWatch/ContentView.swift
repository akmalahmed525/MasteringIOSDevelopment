//
//  ContentView.swift
//  NightWatch
//
//  Created by Akmal on 2024-06-08.
//

import SwiftUI

// This is a struct which conforms to the View protocol
// SwiftUI has declarative syntax
struct ContentView: View {
    var body: some View {
//        VStack { // Vertical stack
//            Image(systemName: "hand.wave")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding() // padding around the entire VStack!
        HStack {
            VStack(alignment: .leading) {
                Text("Nightly Tasks")
                Text("[Nightly] Task 1")
                
                Text("Weekly Tasks")
                Text("[Weekly] Task 1")
                
                Text("Monthly Tasks")
                Text("[Monthly] Task 1")
                Spacer()
            }
            Spacer()
        }
    }
}

// Preview macro
// This macros displays the content view in the canvas ro the right!
// There can be multiple previews!!
#Preview("Portrait") {
    ContentView()
}

// This will show a Landscape view option - Landscape Right!
#Preview("Right", traits: .landscapeRight) {
    ContentView()
}

// This will show a Landscape view option - Landscape Right!
#Preview("Upside Down", traits: .portraitUpsideDown) {
    ContentView()
}

// There is another protocol called PreviewProvider
struct ContentView_Preview: PreviewProvider {
    static var previews: some View { // Returns some view!
        ContentView().previewInterfaceOrientation(.landscapeLeft).previewDisplayName("Left")
    }
}
