//
//  TestNavigation.swift
//  PagesWithNavigation
//
//  Created by Dan Kinney on 10/31/19.
//  Copyright © 2019 Metiax. All rights reserved.
//

import SwiftUI

struct TestNavigation: View {
    @State var day: Int = 0
    
    var views: [UIHostingController<TestPage>] = [
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage()),
        UIHostingController(rootView: TestPage())
    ]
    
    var body: some View {
        PageViewController(pages: views, currentPage: $day)
            .navigationBarTitle("Page \(day)")
    }
}

struct TestNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigation()
    }
}
