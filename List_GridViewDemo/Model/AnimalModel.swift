//
//  Animal.swift
//  Africa
//
//  Created by Ravindra Kumar Sonkar on 01/04/22.
//

import Foundation

struct AnimalModel : Codable, Identifiable {
    let  id : String
    let  name : String
    let  headline  : String
    let  description  : String
    let  link : String
    let  image : String
    let  gallery : [String]
    let  fact  : [String]
}
