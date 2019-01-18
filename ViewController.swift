//
//  ViewController.swift
//  CircularProgressBar
//
//  Created by MAC on 18/1/19.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CircularProgress: CircularProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cp = CircularProgressView(frame: CGRect(x: 10.0, y: 10.0, width: 100.0, height: 100.0))
        cp.trackColor = UIColor.white
        cp.progressColor = UIColor(red: 252.0/255.0, green: 141.0/255.0, blue: 165.0/255.0, alpha: 1.0)
        cp.tag = 101
        self.view.addSubview(cp)
        cp.center = self.view.center
        
        self.perform(#selector(animateProgress), with: nil, afterDelay: 2.0)
        
        CircularProgress.trackColor = UIColor.white
        CircularProgress.progressColor = UIColor.purple
        CircularProgress.setProgressWithAnimation(duration: 1.0, value: 0.3)
    }
    
    @objc func animateProgress() {
        let cP = self.view.viewWithTag(101) as! CircularProgressView
        cP.setProgressWithAnimation(duration: 1.0, value: 0.7)
        
    }


}

