//
//  ViewController.swift
//  SimpleOSXCarthage
//
//  Created by Ruslan Yupyn on 7/5/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import Cocoa
import CRLAlamofireFuture

class ViewController: NSViewController {

    @IBOutlet weak var testLabel: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func didTapButton(sender: AnyObject) {
        testLabel.cell?.title = CRLAlamofireFuture.instance.frameworkFunctionExample()
    }
    

}

