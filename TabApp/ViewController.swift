//
//  ViewController.swift
//  TabApp
//
//  Created by Dean Chang on 6/7/22.
//

import UIKit
import FreestarAds

class ViewController: UIViewController, FreestarBannerAdDelegate {
    
    @IBOutlet var container: UIView?
        
    lazy var smallBanner: FreestarBannerAd = {
        let banner = FreestarBannerAd(delegate: self, andSize: .banner320x50)
        banner.translatesAutoresizingMaskIntoConstraints = false
        return banner
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
                
    }
    
    func setAnchorConstraints(_ banner: FreestarBannerAd) {
        guard let container = banner.superview else {
            return
        }
                
        banner.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        banner.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        banner.widthAnchor.constraint(equalToConstant: banner.frame.width).isActive = true
        banner.heightAnchor.constraint(equalToConstant: banner.frame.height).isActive = true
    }
    
    // MARK: FreestarBannerAdDelegate
    
    func freestarBannerLoaded(_ ad: FreestarBannerAd) {
        setAnchorConstraints(ad)
    }
    
    func freestarBannerFailed(_ ad: FreestarBannerAd, because reason: FreestarNoAdReason) {
    }
}

