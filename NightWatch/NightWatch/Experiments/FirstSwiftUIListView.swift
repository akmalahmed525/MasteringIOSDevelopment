//
//  FirstSwiftUIListView.swift
//  NightWatch
//
//  Created by Akmal on 2024-06-09.
//

import SwiftUI

let nightlyTasks: [String] = [
    "Check all the Windows 1",
    "Check all the Windows 2",
    "Check all the Windows 3",
    "Check all the Windows 4",
    "Check all the Windows 5",
    "Check all the Windows 6",
    "Check all the Windows 7",
    "Check all the Windows 8",
    "Check all the Windows 9",
]

let weeklyTasks: [String] = [
    "Check all the Windows 1",
    "Check all the Windows 2",
    "Check all the Windows 3",
    "Check all the Windows 4",
    "Check all the Windows 5",
]

let monthlyTasks: [String] = [
    "Check all the Windows 1",
    "Check all the Windows 2",
    "Check all the Windows 3"
]

struct FirstSwiftUIListView: View {
    var body: some View {
//        List {
//            Text("Check all the Windows")
//            Text("Check all the Doors")
//            Text("Check that safe is locked")
//            Text("Check all the Windows")
//            Text("Check all the Doors")
//            Text("Check that safe is locked")
//            Text("Check all the Windows")
//            Text("Check all the Doors")
//            Text("Check that safe is locked")
//        }
        
//        List(list, id: \.self) {
//            Text($0)
//        }
        
        // Control flow is not allowed
        List {
            Section(header: Text("\(Image(systemName: "moon.stars")) Nightly Tasks").headerStyle()) {
                ForEach(nightlyTasks, id: \.self) {
                    Text($0)
                }
            }
            
            Section(header: Text("\(Image(systemName: "sun.horizon.fill")) Weekly Tasks")
                .headerStyle()) {
                ForEach(weeklyTasks, id: \.self) {
                    Text($0)
                }
            }
            
            Section(header: Text("\(Image(systemName: "calendar")) Monthly Tasks")
                .headerStyle()) {
                ForEach(monthlyTasks, id: \.self) {
                    Text($0)
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

#Preview {
    FirstSwiftUIListView()
}
