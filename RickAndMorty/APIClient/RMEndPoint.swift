//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 9.06.2024.
//

import UIKit


// frozen anahtar kelimesi enum in degismeyecegini belirtir.
/// Represents unique API endpoint
@frozen enum RMEndPoint: String {
    case character // "character"
    case location
    case episode
    
}
