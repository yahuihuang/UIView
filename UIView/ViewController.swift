//
//  ViewController.swift
//  UIView
//
//  Created by grace on 2019/11/16.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    //var theView:UIView!
    var timer:Timer!
    var counter = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var newView:UIView!
        newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        self.view.addSubview(newView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {
            (timer) in
            //self.rotateView(targetView: self.theView)
            self.rotateView(targetView: newView)
        })
    }
    
    func rotateView(targetView: UIView) {
        let angle = counter * Double.pi / 180
        targetView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += 4
        
        //print(counter)
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
}

