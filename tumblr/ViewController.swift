//
//  ViewController.swift
//  tumblr
//
//  Created by kevin grennan on 2/22/16.
//  Copyright © 2016 kevin grennan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBar: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var exploreCard: UIImageView!

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    var fadeTransition: FadeTransition!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var destinationViewController = segue.destinationViewController
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        fadeTransition = FadeTransition()

        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 0.5
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("home")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("search")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("account")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trending")
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        animateExploreCard()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateExploreCard(){
        UIView.animateWithDuration(0.7, delay: 0, options: .CurveEaseInOut, animations: {
            self.exploreCard.frame.origin.y -= 10
            }) { (Bool) -> Void in
        UIView.animateWithDuration(0.7, delay: 0, options: .CurveEaseInOut, animations: {
            self.exploreCard.frame.origin.y += 10
            }) { (Bool) -> Void in
        self.animateExploreCard()
            }

        }
    }

    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        if selectedIndex == 1{
        exploreCard.alpha = 0
        }
        
    }

}

