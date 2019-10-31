//
//  TestHeader.swift
//  PagesWithNavigation
//
//  Created by Dan Kinney on 10/31/19.
//  Copyright © 2019 Metiax. All rights reserved.
//

import SwiftUI

struct TestHeader: View {
    var body: some View {
        NavigationLink (destination:
            Text("When you navigate BACK from this link, there is a crash in iOS 13.2 (but not in 13.1.2)")
                .padding()
            
        ) {
            Text("Tap me to reproduce problem")
                .padding()
        }
    }
}

struct TestHeader_Previews: PreviewProvider {
    static var previews: some View {
        TestHeader()
    }
}
