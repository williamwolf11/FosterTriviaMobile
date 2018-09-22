//

//  ViewController.swift
//  FosterAmerica (iOS)
//
//  Created by Paul Farcasanu on 7/22/18.
//  Copyright © 2018 Paul Farcasanu. All rights reserved.
//
import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    

override func viewDidLoad() {
    super.viewDidLoad()
    
    let configuration = WKWebViewConfiguration()
    configuration.allowsInlineMediaPlayback = true
    configuration.mediaTypesRequiringUserActionForPlayback = []
    let webView = WKWebView(frame: .zero, configuration: configuration)
    
    view.addSubview(webView)
    
    let layoutGuide = view.safeAreaLayoutGuide
    
    webView.translatesAutoresizingMaskIntoConstraints = false
    webView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
    webView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
    webView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
    webView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
    
    
    if let url = URL(string: "https://pfarcasanu.github.io/FosterTrivia/") {
        webView.load(URLRequest(url: url))
    }
    let cookie = HTTPCookie(properties: [
        .domain: "https://pfarcasanu.github.io/FosterTrivia/",
        .path: "/",
        .name: "MyCookieName",
        .value: "MyCookieValue",
        .secure: "TRUE",
        .expires: NSDate(timeIntervalSinceNow: 31556926)
        ])!
    
    webView.configuration.websiteDataStore.httpCookieStore.setCookie(cookie)
    let cookies = HTTPCookieStorage.shared.cookies ?? []
    for (cookie) in cookies {
        webView.configuration.websiteDataStore.httpCookieStore.setCookie(cookie)
    }
}
    
    
    
}

