//
//  cacheImage.swift
//  CacheImage
//
//  Created by dohien on 6/27/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
class CacheImage {
    static var images : NSCache<NSString , AnyObject> = {
        var result = NSCache<NSString, AnyObject>()
        result.countLimit = 20
        result.totalCostLimit = 10 * 1024 * 1024
        return result
    }()
}
