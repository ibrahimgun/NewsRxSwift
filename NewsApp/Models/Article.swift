//
//  Article.swift
//  NewsApp
//
//  Created by İbrahim Gün on 21.12.2021.
//

import Foundation

public struct ArticleResponse: Decodable {
    let articles: [Article]
}

public struct Article: Decodable {
    let title: String
    let description: String?
}
