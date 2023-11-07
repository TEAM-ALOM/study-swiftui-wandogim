//
//  albumRow.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/7/23.
//

import SwiftUI

struct AlbumRow: View {
    var rowName : String
    var items : [Album]
    var body: some View {
        VStack(alignment: .leading){
            Text(rowName)
                .fontWeight(.bold)
                .font(.title2)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0){
                    ForEach(items){ album in
                        NavigationLink{
                            //TODO:put Detail Link here
                        } label: {
                            AlbumItem(album: album)
                        }
                    }
                    
                }
            }
        }
        .frame(height: 185)
        
    }
}

struct albumRow_Previews: PreviewProvider{
    static var albums = ModelData().album
    
    static var previews: some View{
        AlbumRow(rowName: "추천 인기 상승 앨범", items: albums)
            
    }
}
