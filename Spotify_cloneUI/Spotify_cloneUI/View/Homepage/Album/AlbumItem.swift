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
                
            Text(album.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    AlbumItem(album: ModelData().album[0])
        .preferredColorScheme(.dark)
}
