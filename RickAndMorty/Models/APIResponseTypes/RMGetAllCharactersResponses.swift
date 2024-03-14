//
//  RMGetAllCharactersResponses.swift
//  RickAndMorty
//
//  Created by SDS.Mac.012 on 13/03/24.
//

import Foundation

struct RMGetAllCharactersResponses: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
