//
//  TrendingViewController.swift
//  tumblr
//
//  Created by kevin grennan on 2/22/16.
//  Copyright © 2016 kevin grennan. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    @IBOutlet weak var trendingScroll: UIScrollView!

    @IBOutlet weak var trendingFeed: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingScroll.contentSize = trendingFeed.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
