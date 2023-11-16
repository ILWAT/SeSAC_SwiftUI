//
//  SearchView.swift
//  SeSAC_SwiftUI
//
//  Created by 문정호 on 11/16/23.
//

import SwiftUI


struct Movie: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let color = Color.random()
}


struct SearchView: View {
    @State private var randomNumber = 0
    
    init(randomNumber: Int = 0) {
        self.randomNumber = randomNumber
        print("SearchView init")
    }
    
    var body: some View {
        VStack {
            HueColorView()
            jackView
            brannView()
            Text("Kokojon \(randomNumber)")
                .background(Color.random())

            Button("클릭"){
                randomNumber = Int.random(in: 1...100)
            }
        }
    }
    
    var jackView: some View {
        Text("Jack")
            .background(Color.random())
    }
    
    func brannView() -> some View {
        Text("Brann")
            .background(Color.random())
    }
}

//
//struct SearchView: View {
//    @State private var searchQuery = ""
//    
//    var filterMovie: [Movie] {
//        return searchQuery.isEmpty ? movie: movie.filter { $0.name.contains(searchQuery) }
//    }
//    
//    let movie = [
//        Movie(name: "Avengers"), Movie(name: "Avengers2"),
//        Movie(name: "Avengers: Endgame"), Movie(name: "Xman"),
//        Movie(name: "해리포터"), Movie(name: "해리포터2"),
//        Movie(name: "해리포터3"), Movie(name: "A"),
//        Movie(name: "AB")
//    ]
//    
//    var body: some View {
//        NavigationStack {
//            List{
//                ForEach(filterMovie, id: \.self) { item in
//                    NavigationLink {
//                        SearchDetailView(movie: item)
//                    } label: {
//                        HStack {
//                            Circle().foregroundStyle(item.color)
//                            Text(item.name)
//                        }
//                        .frame(height: 60)
//                    }
//                }
//            }
//            .navigationTitle("검색")
//        }
//        .searchable(text: $searchQuery, placement: .navigationBarDrawer, prompt: "검색해보세요")
//        .onSubmit(of: .search) {
//            print("SearchBar")
//            print("return 값 확인")
//        }
//    }
//}
#Preview {
    SearchView()
}

struct SearchDetailView : View{
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.name)
            Button("기본 버튼") {
                print("basic button clicked")
            }
            
            Button(action: {
                print("hello")
            }, label: {
                Circle().foregroundStyle(.red)
                Text("Button")
            })
            .frame(width: 100, height: 40)
        }
    }
}


extension Color{
    static func random() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}

struct HueColorView: View {
    init() {
        print("HueView init")
    }
    var body: some View {
        Text("Hue")
            .background(Color.random())
    }
}
