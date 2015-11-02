//
//  AddPostVC.swift
//  DailyScenes
//
//  Created by Mike Pitre on 11/2/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var addSceneImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSceneImage.layer.cornerRadius = addSceneImage.frame.size.width / 2
        addSceneImage.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    
    @IBAction func addSceneBtnPressed(sender: UIButton) {
        if let title = titleField.text, let desc = descField.text, let image = addSceneImage.image {
            let post = Post(imagePath: "", title: title, description: desc)
            DataService.instance.addPost(post)
        }
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(sender: AnyObject) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        addSceneImage.image = image
    }
    
}
