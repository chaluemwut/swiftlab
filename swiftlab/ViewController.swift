//
//  ViewController.swift
//  swiftlab
//
//  Created by Computer Engineering on 6/6/2557 BE.
//  Copyright (c) 2557 nsc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        var button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(10, 100, 60, 40);
        button.setTitle("test", forState: UIControlState.Normal);
        button.addTarget(self, action: "buttonAction", forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(button);
        
        var label = UILabel();
        label.frame = CGRectMake(10, 10, 100, 40);
        label.text = "label test";
        self.view.addSubview(label);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonAction() {
        println("click me...");
        var httpUtil = HttpUtil();
        var data = httpUtil.readSyn("http://www.mthai.com");
        println(data);
    }

}

