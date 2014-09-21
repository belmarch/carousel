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
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
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
    
/* func scrollViewDidScroll(scrollView: UIScrollView!) {
       var offset = Float(scrollView.contentOffset.y)
        // This method is called as the user scrolls
        println("content offset: \(scrollView.contentOffset.y)")
        //content offset: 0 -> 568
        //x offset: -30 -> 0
        //y offset: -285 -> 0
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30 , r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285 , r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
            
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
    
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale), CGFloat(scale))
    
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
    
    }
*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

