//
//  ViewController.swift
//  SimpleTvOSCarthage
//
//  Created by Ruslan Yupyn on 7/5/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import UIKit
import CRLAlamofireFuture
import Alamofire
import Future

class ViewController: UIViewController {
    
    let correctURLBase = "https://raw.githubusercontent.com/necrowman/CRLAlamofireFuture/master/TestSources/"
    
    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapTestButton(sender: AnyObject) {
        testLabel.text = CRLAlamofireFuture.instance.frameworkFunctionExample()
        
        let urlString = "\(correctURLBase)simpleTestURL.txt"
        
        let future = Alamofire.request(.GET, urlString).responseString()
        future.onSuccess { [unowned self] value in
            self.testLabel.text = value
        }
        future.onFailure { error in
            print("Finished with error: ", error)
        }
        
    }

}

