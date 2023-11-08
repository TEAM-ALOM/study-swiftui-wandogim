//
//  CategoryList.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/7/23.
//

import SwiftUI

struct CategoryList: View {
    var items : [Category]
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible())]
        VStack(alignment: .leading){
            Spacer(minLength: 15)
            Text("모두 둘러보기")
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            NavigationLink{
                                //TODO:put Detail Link here
                            } label: {
                                CategoryItem(image: item.image, color: item.color, title: item.title)
                            }

                    }
                    
                }
            .padding()
        }
        
    }
}
 
#Preview {
    CategoryList(items: ModelData().category)
        .preferredColorScheme(.dark)
}
