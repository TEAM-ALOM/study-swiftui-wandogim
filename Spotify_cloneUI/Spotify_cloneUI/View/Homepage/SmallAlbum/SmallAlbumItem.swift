//
//  SmallAlbumItem.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/9/23.
//

import SwiftUI

struct SmallAlbumItem: View {
    var album : Album
    var body: some View {
        HStack(){
            album.image
                .resizable()
                .frame(width: 70, height: 70)
            Text(album.name)
                .font(.caption2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer(minLength: 30)
        }
        .frame(width: 170, height: 70)
        .background(Color(hex: "#292929"))
        .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

#Preview {
    SmallAlbumItem(album : ModelData().album[1])
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
