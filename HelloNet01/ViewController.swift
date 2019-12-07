//
//  ViewController.swift
//  HelloNet01
//
//  Created by grace on 2019/12/7.
//  Copyright © 2019 grace. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var wkWebview: WKWebView!
    @IBOutlet weak var urlAddress: UITextField!
    //    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("networkStatus: \(getNetworkStatus())")
        
        let urlString = "https://warrant.tssco.com.tw"
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            wkWebview.load(request)
            urlAddress.text = urlString
        }
    }

    @IBAction func goInputUrl(_ sender: Any) {
        if let urlString = urlAddress.text {
            if let url = URL(string: "https://" + urlString){
                let urlrequest = URLRequest(url: url)
                wkWebview.load(urlrequest)
                urlAddress.text = urlString
            }
        }
    }
    //    @IBAction func netstatusAction(_ sender: Any) {
//        if getNetworkStatus() == true {
//            statusLabel.text = "有網路"
//        } else {
//            statusLabel.text = "無網路"
//        }
//    }
    @IBAction func goBack(_ sender: Any) {
        wkWebview.goBack()
    }
}

