//
//  CategoryView.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/8/23.
//

import SwiftUI

struct CategoryView: View {
    @State private var searchText: String = ""
//    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithTransparentBackground()
//        appearance.backgroundColor = .black
//        appearance.shadowColor = .black
//        UINavigationBar.appearance().standardAppearance = appearance
//     }
    var body: some View {
        
        ZStack{
            Color(hex: "#111211")
                .ignoresSafeArea()
            
            ScrollView{
                Spacer(minLength: 15)
                LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders){
                    HStack(alignment: .top){
                        CircleImage(image: Image("profileImage")) // 라이브 이벤트
                            .frame(width: 35)
                            .padding(.horizontal)
                        Text("검색")
                            .font(.title2)
                            .fontWeight(.bold)
                            .offset(x:-17 ,y:5)
                    }
                    Section(
                        header: TextField("어떤 것을 듣고 싶으세요?", text: $searchText)
                            .foregroundColor(.black)
                            .font(.callout)
                            .padding(10)
                            .background(Color(hex: "fefefe"))
                            .cornerRadius(4)
                            .padding(.horizontal)
                            .toolbarBackground(.visible, for: .navigationBar, .tabBar)

                        
                    ){
                        Spacer()
                        CategoryList(items: ModelData().category)
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    CategoryView()
}
