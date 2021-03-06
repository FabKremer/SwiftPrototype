//
//  Utils.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/14/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import Foundation

var GlobalMainQueue: dispatch_queue_t {
  return dispatch_get_main_queue()
}

var GlobalUserInteractiveQueue: dispatch_queue_t {
  return dispatch_get_global_queue(Int(QOS_CLASS_USER_INTERACTIVE.value), 0)
}

var GlobalUserInitiatedQueue: dispatch_queue_t {
  return dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)
}

var GlobalUtilityQueue: dispatch_queue_t {
  return dispatch_get_global_queue(Int(QOS_CLASS_UTILITY.value), 0)
}

var GlobalBackgroundQueue: dispatch_queue_t {
  return dispatch_get_global_queue(Int(QOS_CLASS_BACKGROUND.value), 0)
}

var GlobalPriorityDefault: dispatch_queue_t {
 return dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
}