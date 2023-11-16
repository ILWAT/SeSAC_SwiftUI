//
//  CategoryView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/15/23.
//

import SwiftUI

/*
 ForEach
 - ..< : ColsedRange
 - Swift KeyPath \.
 - id: KeyPath => item
 - Hashable
 */

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    
    let category = [
        Category(name: "스릴러", count: 10),
        Category(name: "SF", count: 50),
        Category(name: "액션", count: 17),
        Category(name: "코메디", count: 11),
        Category(name: "가족", count: 9),
        Category(name: "애니메이션", count: 12),
        Category(name: "로맨스", count: 7),
        Category(name: "로맨스", count: 8),
        Category(name: "로맨스", count: 8)
    ]
    var body: some View {
        VStack{
            ForEach(category, id: \.id) { item in
                Text("\(item.name) \(item.count) 안녕하세요")
                    .font(.largeTitle)
            }
        }
        
        
    }
}

#Preview {
    CategoryView()
}
