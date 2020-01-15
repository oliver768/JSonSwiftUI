//
//  NetworkService.swift
//  JSonSwiftUI
//
//  Created by Ravindra Sonkar on 29/11/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import Foundation

class NetworkService {
    func getPosts(completion : @escaping ([Post]?) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data, err == nil else {
                DispatchQueue.main.async {
                 completion(nil)
                }
                
                return
            }
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            DispatchQueue.main.async {
                print("nxlvkncklxvlk")
                completion(posts)
            }
            
            
            
        }.resume()
    }
}
