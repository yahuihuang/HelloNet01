//
//  ViewController.swift
//  HelloNet01
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("networkStatus: \(getNetworkStatus())")
    }

    func getNetworkStatus() -> Bool {
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
            return false
        } else {
            return true
        }
    }
}

