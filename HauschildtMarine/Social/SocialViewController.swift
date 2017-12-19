//
//  SocialViewController.swift
//  BusinessApplication
//


import UIKit
import WebKit

class SocialViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    @IBOutlet var webView: WKWebView!
    
    var sentData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = sentData
 
        if navigationItem.title == "LinkedIn" {
            
            let url = NSURL(string: "https://www.linkedin.com/company/5064111/")
            let request = URLRequest(url: url! as URL)
            webView.load(request)
            
        }

        
        if navigationItem.title == "Website" {
            
            let url = NSURL(string: "http://www.hauschildtmarine.dk/")
            let request = URLRequest(url: url! as URL)
            webView.load(request)

        }
    }
}
