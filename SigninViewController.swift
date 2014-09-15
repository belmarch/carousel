//
//  SigninViewController.swift
//  carousel
//
//  Created by Ron Belmarch on 9/10/14.
//  Copyright (c) 2014 Belmerica. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, UIAlertViewDelegate  {


    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinButton: UIButton!

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    @IBAction func onSignin(sender: AnyObject) {
        
    if self.emailField.text == "" && self.passwordField.text == "" {
        
         UIAlertView(title: "Oops", message: "Please enter a vaild email and password", delegate: nil, cancelButtonTitle: "OK").show()
            }
            
    else if self.emailField.text == "tim" && self.passwordField.text == "y" {
        
        loadingView.startAnimating()
        delay(2, closure: { () -> () in
        })
        self.loadingView.stopAnimating()
        self.performSegueWithIdentifier("signinSegue", sender: self)
    
    }
        
    else {
        loadingView.startAnimating()
        delay(2, closure: { () -> () in
        })
        
        self.loadingView.stopAnimating()
        UIAlertView(title: "Oops", message: "Wrong email or password", delegate: nil, cancelButtonTitle: "OK").show()
        }
    }
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
  
    @IBAction func onBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        containerView.frame.origin.y=containerView.frame.origin.y-200
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        containerView.frame.origin.y=containerView.frame.origin.y+200
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
