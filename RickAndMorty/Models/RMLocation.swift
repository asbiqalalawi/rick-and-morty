//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by SDS.Mac.012 on 11/03/24.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
