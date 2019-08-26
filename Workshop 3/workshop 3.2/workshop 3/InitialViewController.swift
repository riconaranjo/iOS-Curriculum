//
//  InitialViewController.swift
//  workshop 3
//
//  Created by Federico Naranjo on 2019-08-22.
//  Copyright © 2019 Federico Naranjo. All rights reserved.
//

// # global constants
var xWins: Int!
var oWins: Int!

import UIKit

class InitialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("\n# initial view loaded\n")
        
        // resets win counters
        xWins = 0
        oWins = 0
    }
    
}

