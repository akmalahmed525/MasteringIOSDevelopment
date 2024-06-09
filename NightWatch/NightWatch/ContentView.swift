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
                // This is nightly
                // This is one way of reusing the styles
                Text("\(Image(systemName: "moon.stars")) Nightly Tasks")
                    .modifier(HeaderStyle())
                    .padding([.top])
                Text("[Nightly] Task 1")
                Text("[Nightly] Task 2")
                Text("[Nightly] Task 3")
                Text("[Nightly] Task 4")
                Text("[Nightly] Task 5")
                
                // This is weekly
                Text("\(Image(systemName: "sun.horizon.fill")) Weekly Tasks")
                    .headerStyle() // This is another way of reusing the same style
                    .padding([.top])
                Text("[Weekly] Task 1")
                Text("[Weekly] Task 2")
                Text("[Weekly] Task 3")
                Text("[Weekly] Task 4")
                Text("[Weekly] Task 5")
                
                // This is monthly
                Text("\(Image(systemName: "calendar")) Monthly Tasks")
                    .headerStyle()
                    .padding([.top])
                Text("[Monthly] Task 1")
                Text("[Monthly] Task 2")
                Text("[Monthly] Task 3")
                Text("[Monthly] Task 4")
                Text("[Monthly] Task 5")
                Spacer()
            }
            .padding([.top, .leading], 10.0)
            .foregroundStyle(.gray)
            Spacer()
        }
    }
}


struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            .fontWeight(.heavy)
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
            .underline()
    }
}

extension View {
    func headerStyle() -> some View {
        self.modifier(HeaderStyle())
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
