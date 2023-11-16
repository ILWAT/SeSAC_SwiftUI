//
//  MovieView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/14/23.
//

import SwiftUI

struct MovieView: View {
    @State private var isPresented = false
    
    var body: some View {
        ZStack {
//            Color.green
            Image("macaroon")
                .resizable()
                .ignoresSafeArea()
            
            Image("cake")
                .resizable()
                .frame(width: 100, height: 100)
                .border(Color.black, width: 5)
               
            Text("ㅋㅋㅋ")
                .bold()
                .font(.largeTitle)
            
            VStack{
                Button("Show") {
                    isPresented = true
                }
                .padding()
                
                Spacer()
                HStack{
                    Circle()
                    Circle()
                    Circle()
                }
            }
        }
        .sheet(isPresented: $isPresented, content: {
            TamagochiView()
        })
//        .fullScreenCover(isPresented: $isPresented), content: {
//            TamagochiView()
//        })
        
        
    }
}

#Preview {
    MovieView()
}
