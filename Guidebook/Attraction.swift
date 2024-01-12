//
//  Attraction.swift
//  Guidebook
//
//  Created by Ellen Stavrou on 27/06/2023.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
