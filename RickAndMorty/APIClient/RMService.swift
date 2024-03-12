//
//  RMService.swift
//  RickAndMorty
//
//  Created by SDS.Mac.012 on 11/03/24.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init () {}
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
