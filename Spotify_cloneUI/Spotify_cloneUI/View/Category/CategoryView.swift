//
//  CategoryView.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/8/23.
//

import SwiftUI

struct CategoryView: View {
    @State private var searchText: String = ""

    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders){
                HStack(alignment: .top){
                    CircleImage(image: Image("profileImage")) // 라이브 이벤트
                        .frame(width: 50)
                        .padding(.horizontal)
                    Text("검색")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .offset(x:-15 ,y:5)
                }
                Spacer(minLength: 10)
                Section(
                    header: TextField("검색어", text: $searchText)
                        
                        .padding()
                        .background(Color.indigo)
                        .cornerRadius(12)
                        .padding()
                        .background(Color.white)
                        
                ){
                    Spacer(minLength: 10)
                    CategoryList(items: ModelData().category)
                }
                
            }
        }
    }
}

#Preview {
    CategoryView()
}
