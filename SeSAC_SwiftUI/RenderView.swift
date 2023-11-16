//
//  RenderView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/13/23.
//

import SwiftUI

struct RenderView: View {
    //시스템에서 정의된 값을 감지하고 뷰를 업데이트 할 수 있음
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var jack
    
    @State var age = 10
    
    init(age: Int = 10) {
        self.age = age
        print("RenderView init")
    }
    
    var body: some View {
        NavigationView {
            VStack(content: {
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            RadialGradient(gradient: Gradient(colors: [.yellow, .green]), center: .center, startRadius: 10, endRadius: 50)
                        
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            AngularGradient(colors: [.yellow, .blue], center: .center, angle: .degrees(50))
                        
                        )
                }
                .frame(width: .infinity, height: 100)
                
                NavigationLink("Push"){
                    MenuView()
                }
                
                Text("Hue: \(age) / \(Int.random(in: 1...100))살")
                Text("Jack: \(Int.random(in: 1...100))살")
                bran
                KokoView()
                Button(jack == .dark ? "다크모드 클릭" : "라이트모드 클릭"){
//                    presentationMode.wrappedValue.dismiss()
                    dismiss.callAsFunction()
                }
                .background(jack == .dark ? .white : .yellow)
                .foregroundColor(jack == .dark ? .black : .white)
                Button("클릭") {
                    age = Int.random(in: 1...100)
//                    
//                    presentationMode.wrappedValue.dismiss()
                }
            })
            .navigationTitle("네비게이션 타이틀")
            .navigationBarItems(leading: Text("클릭"))
        }
    }
    
    var bran: some View {
        Text("Bran: \(Int.random(in: 1...100))살")
    }
}

#Preview {
    RenderView()
}

struct KokoView: View {
    var body: some View {
        Text("Koko: \(Int.random(in: 1...100))살")
    }
}
