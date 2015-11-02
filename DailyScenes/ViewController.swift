//
//  ViewController.swift
//  DailyScenes
//
//  Created by Mike Pitre on 11/2/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //test data
        let post = Post(imagePath: "", title: "Post1", description: "Post 1 Description")
        let post2 = Post(imagePath: "", title: "Post2", description: "Post 2 Description")
        let post3 = Post(imagePath: "", title: "Post3", description: "Post 3 Description")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        //end test data
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 148.5
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    


}

