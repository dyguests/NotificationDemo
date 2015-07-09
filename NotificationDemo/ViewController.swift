//
//  ViewController.swift
//  NotificationDemo
//
//  Created by 范鸿麟 on 15/7/9.
//  Copyright (c) 2015年 范鸿麟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTapped(sender: AnyObject) {
        NotificationUtil.notification(alertBody: "测试声音", soundName: "warnSound.mp3")
        
    }
    
}

