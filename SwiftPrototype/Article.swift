//
//  Article.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/15/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import Foundation

class Article {
  let ident: Int
  let title: String
  let text: String
  
  init(ident: Int, title: String, text: String){
    self.ident = ident
    self.title = title
    self.text = text
  }
  
//  class func parseArticle(fromJson json: Dictionary) -> Article {
////    return Article(ident: json[, name: <#String#>, description: <#String#>)
//    return Article()
//  }

}