//
//  LogInViewController.swift
//  tumblr
//
//  Created by kevin grennan on 2/23/16.
//  Copyright © 2016 kevin grennan. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
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
        self.emailField.becomeFirstResponder()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    @IBAction func cancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
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
