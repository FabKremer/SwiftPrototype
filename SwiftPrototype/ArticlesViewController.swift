//
//  ViewController.swift
//  SwiftPrototype
//
//  Created by TopTier labs on 1/14/15.
//  Copyright (c) 2015 TopTierLabs. All rights reserved.
//

import UIKit

class ArticlesViewController: UITableViewController {
  
  @IBOutlet var spinner : UIActivityIndicatorView?
  var articles : [Article] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.clearsSelectionOnViewWillAppear = false
    self.loadData()
  }
  
  func loadData() {
    var activityIndicator = LoadingView.addLoadingView(inView: self.tableView)
    dispatch_async(GlobalPriorityDefault) {
      BackendProxy.getArticles() {(articles: [Article]?, error: NSError?) in
        if let realArticles = articles {
          self.articles = realArticles
        }else {
          //error
        }
        dispatch_async(GlobalMainQueue) {
          LoadingView.removeLoadingView(andActivityIndicator: activityIndicator)
          self.tableView.reloadData()
        }
      }
    }
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.articles.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("atricleCell", forIndexPath: indexPath) as UITableViewCell
    
    cell.textLabel?.text = self.articles[indexPath.row].title
    cell.backgroundColor = UIColor.clearColor()
    return cell
    
  }
  
  // MARK: - Navigation
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  }
}

