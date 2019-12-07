//
//  Utility.swift
//  HelloNet01
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import Foundation   //所有swift的library
import UIKit        //使用UIView等，包含Foundation及專案內-Target

extension UIViewController {
    //共用元件: 每個UIViewController都可以使用
    func getNetworkStatus() -> Bool {
        if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
            return false
        } else {
            return true
        }
    }
}

