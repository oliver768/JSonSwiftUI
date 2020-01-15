//
//  PostListViewModels.swift
//  JSonSwiftUI
//
//  Created by Ravindra Sonkar on 29/11/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import Foundation

class PostListViewModel : ObservableObject {
    @Published var posts = [PostViewModel]()
    
    init() {
        NetworkService().getPosts { posts in
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
        }
    }
}

struct PostViewModel {
    var post : Post
    
    init(_ post : Post) {
        self.post = post
    }
    
    var id : Int {
        return self.post.id
    }
    var title : String {
        return self.post.title
    }
    var body : String {
        return self.post.body
    }
    
}
