//
//  SmallAlbumList.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/9/23.
//

import SwiftUI

struct SmallAlbumList: View {
    var album : [Album]
    var body: some View {
        let columns = [GridItem(.flexible()), GridItem(.flexible())]
        VStack(alignment: .leading){
            LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(album, id: \.self) { item in
                            NavigationLink{
                                //TODO:put Detail Link here
                            } label: {
                                SmallAlbumItem(album: item)
                            }
                    }
                
                }
            .padding()
        }
    }
}

#Preview {
    SmallAlbumList(album: ModelData().album)
        .preferredColorScheme(.dark)
}
