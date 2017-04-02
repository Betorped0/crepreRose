//
//  DetailViewController.swift
//  Crepe Rose
//
//  Created by Lizbeth Fierro on 02/04/17.
//  Copyright © 2017 becromtech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let myWebview = webView {
                let url = URL(string: detail as! String)
                let request = URLRequest(url: url!)
                myWebview.scalesPageToFit = true
                myWebview.loadRequest(request)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

