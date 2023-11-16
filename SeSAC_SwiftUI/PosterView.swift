//
//  PosterView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/15/23.
//

import SwiftUI

/*
 ScrollView
 LazyVStack vs VStack
 List
 */

struct PosterView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(showsIndicators: true) { // default : Vertical
            LazyVStack {
                ForEach(0..<50) { item in
//                    Text("\(item)").lineLimit(2)
                    AsyncImageView()
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            isPresented.toggle()
                            print(isPresented)
                        }
                }
            }
//            .frame(maxWidth: .infinity)
        }
        .background(.green)
//        .contentMargins(50, for: .scrollContent)
    }
}

struct AsyncImageView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty: //아직 통신중일때 == 아직 데이터가 오지 않았을 때
                ProgressView()
            case .success(let image):
                image
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .scaledToFit()
            case .failure:
                Image(systemName: "star.fill")
            @unknown default:
                Image(systemName: "star.fill")
            }
        }

    }
}

#Preview {
    PosterView()
}


/*
 AsyncImage(url: url) { image in
     image
         .frame(width: 100, height: 100)
         .clipShape(RoundedRectangle(cornerRadius: 20))
         .scaledToFit()
//                .cornerRadius(10)
 } placeholder: {
//            Image(systemName: "star.fill")
     ProgressView()
 }*/
