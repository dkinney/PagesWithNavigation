//
//  TestList.swift
//  PagesWithNavigation
//
//  Created by Dan Kinney on 10/31/19.
//  Copyright © 2019 Metiax. All rights reserved.
//

import SwiftUI

struct TestList: View {
    var body: some View {
        List {
            Text("First List Item")
            Text("Second List Item")
            Text("Third List Item")
            Text("Fourth List Item")
            Text("Fifth List Item")
        }
    }
}

struct TestList_Previews: PreviewProvider {
    static var previews: some View {
        TestList()
    }
}
