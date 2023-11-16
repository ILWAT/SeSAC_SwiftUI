//
//  TamagochiView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/14/23.
//

import SwiftUI

struct User {
    var nickname = "고래밥"
    
    var introduce: String {
        mutating get {
            nickname = "칙촉"
            return "안녕하세요 \(nickname)"
        }
    }
    
    mutating func changeNickname() {
        nickname = "칙촉"
    }
}

//앱에서 UI는 Data에 의존해서 자신의 상태를 결정하게 된다.

//@State. Source of Truth. View에 대한 상태를 저장하기 위한 목적.
//상태 프로퍼티(State Property)
//@Binding. Derived Value.
struct TamagochiView: View {
    @State private var nickname = "고래밥"  //Source of Truth(SOT) : 기준점
    @State private var riceCount = 0
    @State private var waterCount = 0

    @State private var inputText = "안녕하세요"
    @State private var isOn = false

    var body: some View {
//        mutating get {
//            VStack {
//                Text("Hello, \(nickname)")
//                    .background(.black)
//                    .foregroundStyle(.white)
//                    .font(.title)
//                .padding()
//                Button("확인") {
//                    nickname = "새싹이"
//                    print("clicked")
//                }
//            }
//        }
        
        get {
            VStack {
                TextField("밥알 갯수 입력하기", text: $inputText)
                    .padding()
                Toggle("스위치", isOn: $isOn)
                    .padding()
                
                HueView(title: "밥알", count: $riceCount)
                Button("밥알 갯수") {
                    //버튼을 누르면 count + 1 하기
                    riceCount += 1
                }
                .padding(50)
                .background(.green)
                HueView(title: "물방울", count: $waterCount)
                Button(action: {
                    waterCount += 1
                }, label: {
                    Text("물방울 갯수")
                        .padding(50)
                        .background(.yellow)
                })
    
            }
        }
        
    }
}

#Preview {
    TamagochiView()
}

struct HueView: View {
    let title: String
    @Binding var count: Int
//    @State var count: Int //하위 뷰 버튼를 통해서는 값을 변경할 수 있지만, 상위뷰 버튼을 통해서는 값을 변경할 수 없음.
    
    var body: some View {
        HStack {
            Text("\(title) 갯수 : \(count)개")
                .background(.black)
                .foregroundStyle(.white)
            .font(.title)
            Button("하위뷰 버튼") {
                //여기서도 count += 1을 해주고 싶음
                count += 1
            }
        }
    }
}
