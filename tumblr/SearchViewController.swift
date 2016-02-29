//
//  SearchViewController.swift
//  tumblr
//
//  Created by kevin grennan on 2/22/16.
//  Copyright © 2016 kevin grennan. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchImage: UIImageView!

    @IBOutlet weak var loadingImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        searchImage.alpha = 0
        loadingImageView.alpha = 1
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let animationImages:[UIImage]? = [UIImage(named: "loading-1")!, UIImage(named: "loading-2")!, UIImage(named: "loading-3")!]
        
        loadingImageView.animationImages = animationImages
        loadingImageView.animationDuration = 1.5
        loadingImageView.animationRepeatCount = 0
        loadingImageView.startAnimating()
        self.view.addSubview(loadingImageView)
        
        UIView.animateWithDuration(0.4, delay: 3, options: [], animations: {
            self.searchImage.alpha = 1
            self.loadingImageView.alpha = 0
            }, completion: nil)
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
