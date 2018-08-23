//
//  ViewController.swift
//  FosterAmerica (iOS)
//
//  Created by Paul Farcasanu on 7/22/18.
//  Copyright © 2018 Paul Farcasanu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var appWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let app_url = URL(string: "https://pfarcasanu.github.io/FosterAmerica/");
        appWebView.load(URLRequest(url: app_url!));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

