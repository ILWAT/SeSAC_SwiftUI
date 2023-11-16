//
//  NavigationLazyView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/16/23.
//

import SwiftUI

struct NavigationLazyView<T: View>: View {
    let build: () -> T
    
    init(build: @autoclosure @escaping () -> T) {
        self.build = build
        print("NavigationLazyView init"
        )
    }
    
    var body: some View {
        build()
    }
}
