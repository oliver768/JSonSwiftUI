//
//  MovieCellView.swift
//  JSonSwiftUI
//
//  Created by Ravindra Sonkar on 03/12/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import SwiftUI

struct MovieCellView: View {
    var post : Post
    var id = 0
    var body: some View {
        VStack {
            Image("ant_man")
            .resizable()
            .frame(width: 100.0, height: 100.0)
            Text(post.title)
            Text(post.body)
        }
        .frame(width: 100.0, height: 140.0)
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCellView(post: Post(title: "", body: "", id: 0))
    }
}
