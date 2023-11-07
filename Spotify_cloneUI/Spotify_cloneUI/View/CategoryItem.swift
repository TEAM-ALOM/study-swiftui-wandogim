//
//  CategoryItem.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/7/23.
//

import SwiftUI

struct CategoryItem: View {
    var image: Image
    var color: Color
    var title: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
                .offset(x:0, y: 20)
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 160, height: 90)
                .rotationEffect(Angle(degrees: 30))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .offset(x: 75, y: 0)
                
        }
        .frame(width: 160, height: 90)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: 5.0))

    }
}

#Preview {
    CategoryItem(image: Image("sample"), color: Color.blue, title: "팟캐스트")
}
