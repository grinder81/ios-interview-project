//
//  Articles.swift
//  iOSInterviewApp
//
//  Created by MD AL MAMUN (LCL) on 10/23/18.
//  Copyright © 2018 Loblaw. All rights reserved.
//

import Foundation

struct Article: Codable {
    let author: String?
    let title: String?
    let description: String?
    let url: URL?
    let urlToImage: URL?
    let content: String?
    
    private enum CodingKeys : String, CodingKey {
        case author         = "author"
        case title          = "title"
        case description    = "description"
        case url            = "url"
        case urlToImage     = "urlToImage"
        case content        = "content"
    }
}

internal struct ArticleResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
