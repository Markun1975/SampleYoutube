//
//  Video.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/10.
//

import Foundation
import UIKit

class Video: NSObject{
    var title: String
    var descriptionStr: String
    var iconURL: String
    var thumbnailURL: String
    
    init(title: String, description: String, iconURL: String, thumbnailURL: String) {
        self.title = title as String
        self.descriptionStr = description as String
        self.iconURL = iconURL as String
        self.thumbnailURL = thumbnailURL as String
    }
    
    func setJsonData(jsonData: NSDictionary, error: NSError) {
        
    }
}
