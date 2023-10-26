//
//  ViewController.swift
//  ConectaLot
//
//  Created by Mariana Moura de Barros on 29/09/23.
//

import UIKit
import WebKit
import Lottie

class ViewController: UIViewController, UIScrollViewDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var WebView: WKWebView!
    let starAnimationView = LottieAnimationView(name: "loading")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WebView.load(URLRequest(url: URL(string: "https://conectalot.com.br/login")!))
        
        WebView.scrollView.delegate = self
        WebView.navigationDelegate = self
        WebView.scrollView.pinchGestureRecognizer?.isEnabled = false
        
        // Setup Loading
        view.addSubview(starAnimationView)
        starAnimationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            starAnimationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            starAnimationView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            starAnimationView.widthAnchor.constraint(equalToConstant: 250),
            starAnimationView.heightAnchor.constraint(equalToConstant: 250),
        ])
        
        starAnimationView.play()
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollView.pinchGestureRecognizer?.isEnabled = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        starAnimationView.stop()
        starAnimationView.isHidden = true
    }
}
