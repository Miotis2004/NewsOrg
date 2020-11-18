//
//  NewsStory.swift
//  NewsOrg
//
//  Created by Field Employee on 11/17/20.
//

import Foundation

struct NewsStory: Codable {
    var articles: [Article]
}

struct Article: Codable {
    var author: String
    var title: String
    var url: String
    var urlToImage: String
    var content: String 
}

struct DataType: Identifiable {
    var id: String
    var title: String
    var desc: String
    var image: String
    var url: String
}


