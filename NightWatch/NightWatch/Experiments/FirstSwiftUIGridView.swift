//
//  FirstSwiftUIGridView.swift
//  NightWatch
//
//  Created by Akmal on 11/6/2024.
//

import SwiftUI

struct FirstSwiftUIGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [
                GridItem()
            ]) {
                Text("Hello World, Hello World, Hello World")
                Text("Hello World, Hello World, Hello World")
            }
        }
    }
}

#Preview {
    FirstSwiftUIGridView()
}
