//
//  ViewController.swift
//  KIFTestingPOC
//
//  Created by Manish Singh on 10/14/16.
//  Copyright © 2016 Manish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func click(_ sender: UIButton) {
        print((sender.titleLabel?.text)!+"Clicked Yay")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

