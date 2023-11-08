//
//  HomepageView.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/9/23.
//

import SwiftUI

struct HomepageView: View {
    var items : [Album] = ModelData().album
    var body: some View {
        ZStack{
            Color(hex: "#111211")
                .ignoresSafeArea()
            ScrollView{
                Spacer(minLength: 15)
                LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders){
                    Section(header: HStack(alignment: .top){
                        CircleImage(image: Image("profileImage")) // 라이브 이벤트
                            .frame(width: 35)
                            .padding(.horizontal)
                        
                    })
                    {
                        SmallAlbumList(album: items)
                        Spacer(minLength: 30)
                        AlbumRow(rowName: "추천 인기 상승 앨범", items: items)
                        Spacer(minLength: 30)
                        AlbumRow(rowName: "다시 들어보세요", items: items)
                    }
                }
            }
        }
    }
}

#Preview {
    HomepageView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
