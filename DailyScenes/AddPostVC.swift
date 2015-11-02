//
//  AddPostVC.swift
//  DailyScenes
//
//  Created by Mike Pitre on 11/2/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var addSceneImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func addSceneBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(sender: AnyObject) {
    }
    
}
