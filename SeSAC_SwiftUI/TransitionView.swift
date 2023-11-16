//
//  TransitionView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/15/23.
//

import SwiftUI
/*
 
 */

struct TransitionView: View {
    
    @State private var isFull = false
    @State private var isSheet = false
    
    init(isFull: Bool = false, isSheet: Bool = false) {
        self.isFull = isFull
        self.isSheet = isSheet
        print("transition View init")
    }
    
    
    var body: some View {
        NavigationView{
            HStack(spacing: 20){
                Button("Full") {
                    isFull.toggle()
                }
                Button("Sheet") {
                    isSheet = true
                }
                NavigationLink("Push") {
                    NavigationLazyView ( build: RenderView() )
                }
                NavigationLink("Push2") {
                    NavigationLazyView (build: PosterView() )
                }
            }
        }
        .sheet(isPresented: $isSheet, content: {
            RenderView()
        })
        .fullScreenCover(isPresented: $isFull, content: {
            RenderView()
        })
        
        
    }
}

#Preview {
    TransitionView()
}
