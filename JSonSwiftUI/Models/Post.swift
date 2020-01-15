//
//  Post.swift
//  JSonSwiftUI
//
//  Created by Ravindra Sonkar on 29/11/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import Foundation

struct Post : Codable, Identifiable {
    var title : String
    var body : String
    var id : Int
}
