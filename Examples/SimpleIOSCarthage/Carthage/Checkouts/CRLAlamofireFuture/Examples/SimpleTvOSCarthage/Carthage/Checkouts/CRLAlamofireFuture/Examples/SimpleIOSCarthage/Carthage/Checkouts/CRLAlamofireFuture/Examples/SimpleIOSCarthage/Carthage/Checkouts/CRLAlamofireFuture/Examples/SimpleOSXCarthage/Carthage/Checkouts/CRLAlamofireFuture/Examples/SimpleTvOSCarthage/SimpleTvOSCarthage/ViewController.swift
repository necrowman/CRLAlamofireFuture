//
//  ViewController.swift
//  SimpleTvOSCarthage
//
//  Created by Ruslan Yupyn on 7/5/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import UIKit
import CRLAlamofireFuture

class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapTestButton(sender: AnyObject) {
        testLabel.text = CRLAlamofireFuture.instance.frameworkFunctionExample()
    }

}

