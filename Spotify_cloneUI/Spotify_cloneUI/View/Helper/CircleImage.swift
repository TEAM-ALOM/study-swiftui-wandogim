//
//  CircleImage.swift
//  Landmarks
//
//  Created by 김도완 on 10/8/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
    }
}

#Preview {
    CircleImage(image: Image("profileImage"))
}
