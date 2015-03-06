//
//  faculty.swift
//  msuInfo
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
import UIKit

struct faculty {
    var facultyImage = UIImage()
    var facultyName = String()
    init (bImage: UIImage, bName: String){
        self.facultyImage = bImage
        self.facultyName = bName
    }
}