//
//  ContentView.swift
//  PagesWithNavigation
//
//  Created by Dan Kinney on 10/31/19.
//  Copyright © 2019 Metiax. All rights reserved.
//

import SwiftUI

struct TestDestination: View {
    var body: some View {
        Text("When you navigate BACK from this link, there is a crash in iOS 13.2 (but not in 13.1.2)")
            .padding()
    }
}

struct TestContent: View {
    var body: some View {
        NavigationLink (destination: TestDestination()) {
            Text("Tap me to reproduce problem").padding()
        }
    }
}

struct ContentView: View {
    @State var day: Int = 0
    
    var controllers: [UIHostingController<TestContent>] = [
        UIHostingController(rootView: TestContent())
    ]
    
    var body: some View {
        NavigationView {
            // The PageViewController class (UIViewControllerRepresentable)
            // was copied over from the SwiftUI tutorial project, WorkingWithUIControls
            PageViewController(controllers: controllers, currentPage: $day)
            .navigationBarTitle("Repro Case")
            .navigationBarItems(
                leading: NavigationLink(destination: TestDestination()) {
                    Text("This too")
                },
                trailing: NavigationLink(destination: TestDestination()) {
                    Text("And this")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
