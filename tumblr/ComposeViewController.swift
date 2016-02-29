//
//  ComposeViewController.swift
//  tumblr
//
//  Created by kevin grennan on 2/22/16.
//  Copyright © 2016 kevin grennan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!

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
        textButton.frame.origin.y = 600
        photoButton.frame.origin.y = 600
        quoteButton.frame.origin.y = 600
        linkButton.frame.origin.y = 600
        chatButton.frame.origin.y = 600
        videoButton.frame.origin.y = 600
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0.2, options: [], animations: {
            self.textButton.frame.origin.y = 139
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0, options: [], animations: {
            self.photoButton.frame.origin.y = 139
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.15, options: [], animations: {
            self.quoteButton.frame.origin.y = 139
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.25, options: [], animations: {
            self.linkButton.frame.origin.y = 263
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, options: [], animations: {
            self.chatButton.frame.origin.y = 263
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.3, options: [], animations: {
            self.videoButton.frame.origin.y = 263
            }, completion: nil)
    }
    

    @IBAction func closeButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3, delay: 0.2, options: [], animations: {
            self.textButton.frame.origin.y = -100
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0, options: [], animations: {
            self.photoButton.frame.origin.y = -100
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.15, options: [], animations: {
            self.quoteButton.frame.origin.y = -100
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.25, options: [], animations: {
            self.linkButton.frame.origin.y = -100
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, options: [], animations: {
            self.chatButton.frame.origin.y = -100
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.3, options: [], animations: {
            self.videoButton.frame.origin.y = -100
            }, completion: {(Bool) -> Void in
                self.dismissViewControllerAnimated(false, completion: nil)
        })

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
