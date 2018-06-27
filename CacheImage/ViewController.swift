////
////  ViewController.swift
////  CacheImage
////
////  Created by dohien on 6/27/18.
////  Copyright © 2018 hiền hihi. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    @IBOutlet weak var spinner: UIActivityIndicatorView!
//    @IBOutlet weak var imageView: UIImageView!
//    //    var imageURL: URL?
//    //    var image = UIImage()
//    var cache: NSCache<AnyObject, AnyObject>!
//    var 
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        spinner.startAnimating()
//        imageUrlString()
//        // Do any additional setup after loading the view.
//    }
//    func imageUrlString () {
//        
//        let imageUrlString = "http://s1.picswalls.com/wallpapers/2016/06/10/4k-high-definition-wallpaper_065229159_309.jpg"
//        let imageUrl = URL(string: imageUrlString)!
//        if let cacheImage = imageCache.object(forKey: "CachedPbject"){
//            
//        }
//        DispatchQueue.global().async {
//            let imageData = NSData(contentsOf: imageUrl)!
//            DispatchQueue.main.async {
//                let image = UIImage(data: imageData as Data)
//                self.imageView.image = image
//                self.spinner.isHidden = true
//            }
//        }
//        ////    }
//        //    func loadImageWithUrl() {
//        //      let yorImageView = cacheImage()
//        //        imageView = nil
//        //        spinner.startAnimating()
//        //        if let imageFromCache = imageCache.object(forKey: yorImageView as AnyObject) as? UIImage{
//        //            self.image = imageFromCache
//        //            return
//        //        }
//        //        URLSession.shared.dataTask(with: yorImageView, completionHandler: { (data, response, error) in
//        //
//        //            if error != nil {
//        //                print(error as Any)
//        //                self.spinner.stopAnimating()
//        //                return
//        //            }
//        //            DispatchQueue.main.async(execute: {
//        //                let strURL = "http://s1.picswalls.com/wallpapers/2016/06/10/4k-high-definition-wallpaper_065229159_309.jpg"
//        //                if let unwrappedData = data, let imageToCache = UIImage(data: unwrappedData){
//        //                    if self.imageURL == url {
//        //                        self.image = imageToCache
//        //                    }
//        //                    imageCache.setObject(imageToCache, forKey: url as AnyObject)
//        //                }
//        //                self.spinner.stopAnimating()
//        //            })
//        //        }).resume()
//        //    }
//        //
//        //    let imageCache = NSCache<NSString, AnyObject>()
//        //    var image = UIImage()
//        //    // MARK: - Properties
//        //
//        //    var imageURLString: String?
//        //
//        //    func downloadImageFrom(urlString: String, imageMode: UIViewContentMode) {
//        //        guard let url = URL(string: urlString) else { return }
//        //        downloadImageFrom(url: url, imageMode: imageMode)
//        //    }
//        //
//        //    func downloadImageFrom(url: URL, imageMode: UIViewContentMode) {
//        //
//        //        if let cachedImage = imageCache.object(forKey: url.absoluteString as NSString) as? UIImage {
//        //            self.image = cachedImage
//        //        } else {
//        //            URLSession.shared.dataTask(with: url) { data, response, error in
//        //                guard let data = data, error == nil else { return }
//        //                DispatchQueue.main.async {
//        //                    let imageToCache = UIImage(data: data)
//        //                    self.imageCache.setObject(imageToCache!, forKey: url.absoluteString as NSString)
//        //                    self.image = imageToCache!
//        //                }
//        //                }.resume()
//        //        }
//        //    }
//        /*
//         // MARK: - Navigation
//         
//         // In a storyboard-based application, you will often want to do a little preparation before navigation
//         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         // Get the new view controller using segue.destinationViewController.
//         // Pass the selected object to the new view controller.
//         }
//         */
//        
//    }
//}

