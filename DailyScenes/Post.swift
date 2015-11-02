//
//  Post.swift
//  DailyScenes
//
//  Created by Mike Pitre on 11/2/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init (imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
    
}