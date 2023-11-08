//
//  ModelData.swift
//  Spotify_cloneUI
//
//  Created by 김도완 on 10/31/23.
//

import Foundation

final class ModelData: ObservableObject{
    @Published var album: [Album] = load("albumData.json")
    @Published var category: [Category] = load("categoryData.json")
}
 
func load<T: Decodable>(_ filename: String) -> T  {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldm't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("Couldn;t parse \(filename) as \(T.self):\n\(error)")
    }
}
