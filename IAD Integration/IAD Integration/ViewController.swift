//
//  ViewController.swift
//  IAD Integration
//
//  Created by Pradeep Yadav on 20/07/15.
//  Copyright (c) 2015 iOSBucket.blogspot.in. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController,ADBannerViewDelegate {
    
    var bannerV:ADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.canDisplayBannerAds = true

    }

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        bannerV = ADBannerView(adType: ADAdType.Banner);
        bannerV.frame = CGRect(x: 0, y: 0, width: 320, height: 50);
        bannerV.delegate = self;
        self.view.addSubview(bannerV)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bannerViewDidLoadAd(banner: ADBannerView!) {
        println("success")
       
    }
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError
        error: NSError!) {
            println("failed to load ad")
        banner.removeFromSuperview() //Remove the banner (No ad)
    }
    
    

}

