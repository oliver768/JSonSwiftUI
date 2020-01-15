//
//  ContentView.swift
//  JSonSwiftUI
//
//  Created by Ravindra Sonkar on 29/11/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""

//    @ObservedObject private var postListVM = PostListViewModel()
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter the movie genre", text: $name, onEditingChanged: { (flag) in
                    print(flag)
                }) {
                    print("qqqqqqqqqqqq")
                }

                //                List(self.postListVM.posts, id: \.id) { post in
                //                    NavigationLink(destination: DetailView()) {
                //                        VStack {
                //                            Image("ant_man")
                //                                .resizable()
                //                                .frame(width: 100.0, height: 100.0)
                //                            Text(post.title)
                //                            Text(post.body)
                //                        }
                //                        .frame(width: 100.0, height: 140.0)
                //                        //                        MovieCellView(post: post, id: post.id)
                //                    }
                //                }
                //            }
                
                List {
//                    NavigationLink(destination: DetailView()) {
                     ImageRow()
//                    }
                }.navigationBarTitle("Movies List")
            }
            
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}

