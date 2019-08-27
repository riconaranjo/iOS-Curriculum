//
//  InitialViewController.swift
//  workshop 3
//
//  Created by Federico Naranjo on 2019-08-22.
//  Copyright © 2019 Federico Naranjo. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("\n# initial view loaded\n")
    }
    
    @IBAction func unwindToInitialView(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
}

