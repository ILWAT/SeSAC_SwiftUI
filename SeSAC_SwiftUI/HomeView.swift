//
//  HomeView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/15/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing: 50) {
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach(0..<10){ _ in
                            AsyncImageView()
                        }
                    }
                }
                
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach(0..<10){ _ in
                            AsyncImageView()
                        }
                    }
                }
                
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach(0..<10){ _ in
                            AsyncImageView()
                        }
                    }
                }
                
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach(0..<10){ _ in
                            AsyncImageView()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
