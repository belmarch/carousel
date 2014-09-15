//
//  IntroViewController.swift
//  carousel
//
//  Created by Ron Belmarch on 9/9/14.
//  Copyright (c) 2014 Belmerica. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2Image: UIImageView!
    @IBOutlet weak var tile3Image: UIImageView!
    @IBOutlet weak var tile4Image: UIImageView!
    @IBOutlet weak var tile5Image: UIImageView!
    @IBOutlet weak var tile6Iimage: UIImageView!
    @IBOutlet weak var signinButton: UIButton!
    
    
    override func viewDidLoad() {
        scrollView.contentSize = CGSize(width: 320, height: 1150)
        //scrollView.contentSize = imageView.image!.size
        super.viewDidLoad()
        scrollView.delegate = self
        
 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        println("yo, scrollview scrolled: \(scrollView.contentOffset.y)")
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
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

