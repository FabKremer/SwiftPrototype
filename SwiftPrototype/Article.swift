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
  let name: String
  let description: String
  
  init(ident: Int, name: String, description: String){
    self.ident = ident
    self.name = name
    self.description = description
  }
  
//  class func parseArticle(fromJson json: Dictionary) -> Article {
////    return Article(ident: json[, name: <#String#>, description: <#String#>)
//    return Article()
//  }

}