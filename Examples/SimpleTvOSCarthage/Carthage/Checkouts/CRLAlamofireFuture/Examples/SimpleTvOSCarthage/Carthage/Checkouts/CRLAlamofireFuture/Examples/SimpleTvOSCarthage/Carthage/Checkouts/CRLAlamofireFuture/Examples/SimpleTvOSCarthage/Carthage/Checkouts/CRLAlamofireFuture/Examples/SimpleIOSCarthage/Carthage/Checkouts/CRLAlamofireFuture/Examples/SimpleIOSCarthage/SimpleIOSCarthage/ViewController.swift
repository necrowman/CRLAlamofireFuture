//
//  ViewController.swift
//  SimpleIOSCarthage
//
//  Created by Ruslan Yupyn on 7/5/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import UIKit
import CRLAlamofireFuture
import Alamofire
import Future

class ViewController: UIViewController {

    let correctURLBase = "https://raw.githubusercontent.com/necrowman/CRLAlomofireFeature/master/"
    
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapTestItButton(sender: AnyObject) {
        
        
        testLabel.text = CRLAlamofireFuture.instance.frameworkFunctionExample()
        
        let urlString = "\(correctURLBase)simpleTestURL.txt"
        let future = Alamofire.request(.GET, urlString).responseString(queue: <#T##dispatch_queue_t?#>, encoding: <#T##NSStringEncoding?#>, completionHandler: <#T##Response<String, NSError> -> Void#>)
        future.onSuccess { [unowned self] value in
            self.testLabel.text = value
        }
        future.onFailure { [unowned self] error in
            self.testLabel.text = error
        }
        
        
    }


}

