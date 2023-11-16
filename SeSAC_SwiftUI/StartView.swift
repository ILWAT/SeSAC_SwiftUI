//
//  StartView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/15/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Text("홈 화면")
                    Image(systemName: "house.fill")
                }
            Text("2")
                .tabItem {
                    Text("작성 화면")
                    Image(systemName: "pencil")
                }
            Text("3")
                .tabItem {
                    Text("설정 화면")
                    Image(systemName: "star.fill")
                }
        }
    }
}

#Preview {
    StartView()
}
