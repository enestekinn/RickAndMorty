//
//  Location.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 9.06.2024.
//

import Foundation


struct RMLocation: Codable {
    
    let id: String
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
