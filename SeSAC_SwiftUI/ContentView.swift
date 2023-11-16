//
//  ContentView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/13/23.
//

/*
 SwiftUI: iOS13 14 15 16 17
 
 WWDC19
 - UIKit > UILabel, UIButton
 - MapKit > MKMapView
 */

import SwiftUI

//struct

//modifier : "."으로 이어지는 코드들

//Button<Text>
//ModifiedContent<ModifiedContent<Button<Text>, _ForegroundStyleModifier<Color>>
//ModifiedContent<ModifiedContent<Button<Text>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>

//Generic: 사용할 때 타입을 구체적으로 지정
//some: Opaque type(Swift 5.1) 역제네릭 타입

// 1. modifier
// 2. 뷰가 매번 반환된다.
// 3. modifier 순서

//생성한 당시에는 어떤 타입인지 모르고, 사용할 때 구체적인 타입을 정의
//some 사용할 때 오히려 이미 알고 있는 타입을 거꾸로 숨김

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button("클릭하기") {
                let value = type(of: self.body)
                print(value)
            }
            .foregroundStyle(.yellow)
            .background(.green)
   
            Text("안녕하세욥")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .background(Color.black)
                .padding()
                .background(Color.red)
                .border(Color.black, width: 10)
                .clipShape(Circle())
        }           
    }
}

#Preview {
    ContentView()
}


