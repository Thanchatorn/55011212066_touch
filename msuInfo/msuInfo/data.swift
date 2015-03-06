//
//  data.swift
//  msuInfo
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<faculty> {
        var tempArray = Array<faculty>()
        let b1 = faculty(bImage: UIImage(named: "IT.png"), bName: "..info")
        tempArray.append(b1)
        
        let b2 = faculty(bImage: UIImage(named: "EN.png"), bName: "..info")
        tempArray.append(b2)
        
        let b3 = faculty(bImage: UIImage(named: "SC.png"), bName: "..info")
        
        return tempArray
    }
}
