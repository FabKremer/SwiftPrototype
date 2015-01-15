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
  var articles : [String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.clearsSelectionOnViewWillAppear = false
//    self.spinner?.center = self.tableView.center;
    
    self.loadData()
    
  }
  
  func loadData() {
    var activInd = LoadingView.addLoadingView(viewToShowIn: self.view)
    dispatch_async(GlobalPriorityDefault) {
      let articles = BackendProxy.getArticles()
      dispatch_async(GlobalMainQueue) {
          LoadingView.removeLoadingView(activInd)
          self.reloadData()

      }
    }
  }
  
  func reloadData(){
//    self.spinner?.stopAnimating()
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
    
    cell.textLabel?.text = self.articles[indexPath.row]
    cell.textLabel?.textColor = UIColor.whiteColor()
    cell.backgroundColor = UIColor.clearColor()
    return cell
    
  }
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  }
  */
}

