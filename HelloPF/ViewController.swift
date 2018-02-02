//
//  ViewController.swift
//  HelloPF
//
//  Created by 郭朋 on 2/2/18.
//  Copyright © 2018 郭朋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let deviceSupportHanlder = FTDeviceSupportHandler.sharedInstance()
        print(deviceSupportHanlder!.deviceName())
        print(deviceSupportHanlder!.deviceRegionInfo())
        print(deviceSupportHanlder!.productName())
        print(deviceSupportHanlder!.supportsApplePay())
        
    }


}

