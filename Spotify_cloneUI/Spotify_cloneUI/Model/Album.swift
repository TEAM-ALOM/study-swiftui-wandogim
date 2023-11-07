//
//  Album.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 10/29/23.
//

import Foundation
import SwiftUI

struct Album: Codable, Hashable, Identifiable{
    var id : Int
    var name : String
    var artist : String
    var description : String
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
}
