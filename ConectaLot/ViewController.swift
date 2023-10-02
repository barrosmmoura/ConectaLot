//
//  ViewController.swift
//  ConectaLot
//
//  Created by Mariana Moura de Barros on 29/09/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var WebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WebView.load(URLRequest(url: URL(string: "https://conectalot.com.br/login")!))
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return UIInterfaceOrientationMask.portrait
        }
      
        override var shouldAutorotate: Bool {
            return false
        }

}

