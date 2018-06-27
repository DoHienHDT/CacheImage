//
//  CacheImageViewController.swift
//  CacheImage
//
//  Created by dohien on 6/27/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class CacheImageViewController: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var dispatchWorkItem: DispatchWorkItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.startAnimating()
        let url = "https://i.quantrimang.com/photos/image/2018/01/10/hinh-nen-4k-8.jpg"
        fetchImage(from: url) { (image) in
            self.photoImage.image = image
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        dispatchWorkItem?.cancel()
    }
    // tim nap hinh anh
    
    func fetchImage(from urlString: String, completedHandler: @escaping (UIImage?) -> Void) {
        var image: UIImage?
        dispatchWorkItem = DispatchWorkItem(block: {
            guard let url = URL(string: urlString) else { return  }
            
            if let cache = CacheImage.images.object(forKey: url.absoluteString as NSString) as? UIImage {
                image = cache
            } else {
                // câu lệnh thực hiện
                do {
                    // try: thử
                    let aData = try Data(contentsOf: url)
                    image = UIImage(data: aData)
                    CacheImage.images.setObject(image!, forKey: url.absoluteString as NSString)
                }
                    // câu lệnh bắt lỗi
                catch {
                    print("Cache Image Error")
                }
            }
        })
        DispatchQueue.global().async {
            self.dispatchWorkItem?.perform()
            DispatchQueue.main.async {
                completedHandler(image)
            }
        }
    }

}
