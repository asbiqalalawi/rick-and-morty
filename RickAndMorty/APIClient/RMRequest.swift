//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by SDS.Mac.012 on 11/03/24.
//

import Foundation

final class RMRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: [String]
    
    private let queryParams: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach { pathComponent in
                string += "/\(pathComponent)"
            }
        }
        
        if !queryParams.isEmpty {
            string += "?"
            let argumentString = queryParams.compactMap({ argument in
                guard let value = argument.value else { return nil }
                return "\(argument.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    public init (
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParams: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParams = queryParams
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
