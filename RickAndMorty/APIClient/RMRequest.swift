//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 9.06.2024.
//

import Foundation

/// Object that represent single a api call
final class RMRequest {
 // Baseurl
 //Endpoint
    //Path component
    //https://rickandmortyapi.com/api/
    //query parameters
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
   private let endpoint: RMEndPoint
   private  let pathComponent: [String]
    
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
              string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {  return nil }
                return "\($0.name)=\(value)"
         }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    
    
    
    /*
     URLQueryItem  URLlerin daha okunabilir olmasi icin kullanilir.
    Anahtar-Deger ciftinden olusur.
     */
    let queryParameters: [URLQueryItem]
    
    
    // MARK: - Public
    public init(endpoint: RMEndPoint, pathComponent: [String] = [], queryParameters: [URLQueryItem] = [] ) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
    
}
