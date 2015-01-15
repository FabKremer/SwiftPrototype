//
//  BackendProxy.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/14/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import Foundation

class BackendProxy {
  
  class func getArticles() -> [String: AnyObject] {
    let manager = AFHTTPRequestOperationManager()
    var responseDict = [String: AnyObject]()
    manager.GET(
      "http://local.blinker.com:3000/api/v3/listings/1",
      parameters: nil,
      success: { (operation: AFHTTPRequestOperation!,
        responseObject: AnyObject!) in
        println(responseObject)
//        let responseJson = JSON(data: responseObject.description)
//        responseDict["jsonResponse"] = jsonObject
//        responseDict["error"] = nil
      },
      failure: { (operation: AFHTTPRequestOperation!,
        error: NSError!) in
        println(error)
//        responseDict["error"] = error.description
//        responseDict["jsonResponse"] = nil
    })
    
    return [String:AnyObject]()
  }

}
//        let jsonData = responseObject.description.dataUsingEncoding(NSUTF8StringEncoding)

//var parseError: NSError?
//let jsonObject: AnyObject? = NSJSONSerialization.JSONObjectWithData(jsonData!,
//  options: NSJSONReadingOptions.AllowFragments,
//  error:&parseError)