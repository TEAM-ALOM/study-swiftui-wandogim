//
//  ContentView.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 10/29/23.
//

import SwiftUI

struct AlbumItem: View {
    var album : Album
    var body: some View {
        VStack (alignment: .leading)
        {
            album.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(album.artist)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    AlbumItem(album: ModelData().album[0])
}
