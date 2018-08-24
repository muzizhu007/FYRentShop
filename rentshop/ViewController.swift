//
//  ViewController.swift
//  rentshop
//
//  Created by admin on 2018/8/24.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    lazy var url: NSURL = {
        let url = NSURL.init(string: "https://h5.youzan.com/v2/feature/1CpmBFi9YU")!
        return url
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setupUI() {        
        let wkView = WKWebView.init(frame: CGRect.init(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        view.addSubview(wkView)
        
        wkView.uiDelegate=self
        wkView.navigationDelegate=self
        
        let request:NSURLRequest = NSURLRequest.init(url: url as URL)
        wkView.load(request as URLRequest)
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
    }

}

