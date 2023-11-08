//
//  Category.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 11/7/23.
//

import Foundation
import SwiftUI

struct Category: Codable, Hashable, Identifiable{
    var id: Int
    var title: String
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    private var colorHexCode : String
    var color : Color{
        Color(hex: colorHexCode)
    }
}
