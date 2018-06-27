//
//  ViewController.swift
//  CacheImage
//
//  Created by dohien on 6/25/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let yourImageView: ImageLoader = {
        
        let iv = ImageLoader()
        iv.frame = CGRect(x: 10, y: 100, width: 300, height: 300)
        iv.backgroundColor = UIColor(red: 0.94, green: 0.94, blue: 0.96, alpha: 1.0)
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageLoader()
        if let strUrl = "http://s1.picswalls.com/wallpapers/2016/06/10/4k-high-definition-wallpaper_065229159_309.jpg".addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed),let imgUrl = URL(string: strUrl) {
            yourImageView.loadImageWithUrl(imgUrl)
        }
   
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
