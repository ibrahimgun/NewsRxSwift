//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by İbrahim Gün on 21.12.2021.
//

import RxSwift
import RxCocoa
import Foundation

public struct ArticleListViewModel {
    let articlesViewModel: [ArticleViewModel]
}

extension ArticleListViewModel {
    
    init(_ articles: [Article]) {
        self.articlesViewModel = articles.compactMap(ArticleViewModel.init)
    }
}

extension ArticleListViewModel {
    func articleAt(_ index: Int) -> ArticleViewModel {
        return self.articlesViewModel[index]
    }
}

public struct ArticleViewModel{
    let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: Observable<String> {
        return Observable<String>.just(article.title)
    }
    
    var description: Observable<String> {
        return Observable<String>.just(article.description ?? "")
    }
}
