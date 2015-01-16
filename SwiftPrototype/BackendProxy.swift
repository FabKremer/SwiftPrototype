//
//  BackendProxy.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/14/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import Foundation

class BackendProxy {
  
  class func getArticles(completion: (articles: [Article]?, error: NSError?) -> Void) {
    let manager = AFHTTPRequestOperationManager()
    var responseArticles = [Article]()
    manager.GET(
      "http://localhost:3000/countries",
      parameters: nil,
      success: { (operation: AFHTTPRequestOperation!,
        responseObject: AnyObject!) in
        // parse Articles from response JSON
        let responseDict = responseObject as [String: AnyObject]
        for article in responseDict["countries"] as [AnyObject] {
          let jsonArticle = article as [String: AnyObject]
          responseArticles.append(Article(ident: jsonArticle["id"] as Int, name: jsonArticle["name"] as String, description: jsonArticle["name"] as String))
        }
        completion(articles: responseArticles, error: nil)
      },
      failure: { (operation: AFHTTPRequestOperation!,
        error: NSError!) in
        completion(articles: nil, error: error)
    })
    
    
  }

}
