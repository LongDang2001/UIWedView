//
//  ViewController.swift
//  UIWebView
//
//  Created by admin on 4/14/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var btBack: UIButton!
    @IBOutlet weak var btNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.navigationDelegate = self
        let url = URL(string: "https://www.google.com/")
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        checkButton()
    }
    
    @IBAction func back(_ sender: Any) {
        webView.goBack()
        checkButton()
    }
    
    @IBAction func next(_ sender: Any) {
        webView.goForward()
        checkButton()
    }
    
    func checkButton() {
        if webView.canGoBack == true {
            btBack.isEnabled = true
        } else {
            btBack.isEnabled = false
        }
        
        if webView.canGoForward == true {
            btNext.isEnabled = true
        } else {
            btNext.isEnabled = false
        }
    }
}

