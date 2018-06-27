//
//  ImageLoader.swift
//  CacheImage
//
//  Created by dohien on 6/25/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()
class ImageLoader: UIImageView {
    var imageURL: URL?
    let activityIndicator = UIActivityIndicatorView()
    func loadImageWithUrl(_ url: URL){
        activityIndicator.color = .orange
        addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageURL = url
        image = nil
        activityIndicator.startAnimating()
        if let imageFromCache = imageCache.object(forKey: url as AnyObject) as? UIImage {
            self.image = imageFromCache
            activityIndicator.stopAnimating()
            return
        }
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response , error) in
            if error != nil {
                print(error as Any)
//                self.activityIndicator.stopAnimating()
                return
            }
            DispatchQueue.main.async(execute: {
                if let unwreppedData = data, let imageToCache = UIImage(data: unwreppedData){
                    if self.imageURL == url {
                        self.image = imageToCache
                    }
                    imageCache.setObject(imageToCache, forKey: url as AnyObject)
                }
//                self.activityIndicator.stopAnimating()
            })
        })
        .resume()
    }

}
