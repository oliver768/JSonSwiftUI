//
//  ImageRow.swift
//  CombineGridLayoutStarter
//
//  Created by Ravindra Sonkar on 03/12/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ImageRow: View {
    @ObservedObject private var postListVM = PostListViewModel()

    var body: some View {
        var images: [[Int]] = []
        _ = (0...postListVM.posts.count).publisher
            .collect(3)
            .collect()
            .sink(receiveValue: {images = $0 })
        return ForEach(0..<images.count, id: \.self) { array in
            HStack(spacing: 20) {
                ForEach(images[array], id: \.self) { number in
                        VStack {
                            Spacer().frame(height: 30)
                            Image("ant_man")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                            Text("Ant Man")
                            Text("2012")
                        }.shadow(radius: 8)
                }
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
