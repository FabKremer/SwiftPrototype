//
//  LoadingView.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/15/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import Foundation

class LoadingView : UIView {
  
  class func addLoadingView(inView viewToShowIn: UIView) -> UIActivityIndicatorView {
    var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
    activityIndicator.color = UIColor.grayColor()
    activityIndicator.center = viewToShowIn.center
    activityIndicator.startAnimating()
    viewToShowIn.addSubview(activityIndicator)
    viewToShowIn.bringSubviewToFront(activityIndicator)
    
    return activityIndicator
  }
  
  class func removeLoadingView(andActivityIndicator activityIndicator: UIActivityIndicatorView) {
    activityIndicator.removeFromSuperview()
  }
  
}