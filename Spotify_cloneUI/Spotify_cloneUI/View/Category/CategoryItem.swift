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
                .multilineTextAlignment(.leading)
                .font(.headline)
                .fontWeight(.bold)
                .offset(x:-40, y: 22)
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 70, height: 90)
                .rotationEffect(Angle(degrees: 30))
                .shadow(radius: 10)
                .offset(x: 60, y: 0)
            
        }
        .frame(width: 140, height: 60)
        .padding()
        .background(color)
        .foregroundColor(.white)
        .shadow(radius: 10)
        .clipShape(RoundedRectangle(cornerRadius: 5.0))

    }
}

#Preview {
    CategoryItem(image: Image("sample"), color: ModelData().category[0].color, title: "팟캐스트")
}
