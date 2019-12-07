//
//  ViewController.swift
//  HelloNet01
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("networkStatus: \(getNetworkStatus())")
    }

    @IBAction func netstatusAction(_ sender: Any) {
        if getNetworkStatus() == true {
            statusLabel.text = "有網路"
        } else {
            statusLabel.text = "無網路"
        }
    }
}

