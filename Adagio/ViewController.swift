//
//  ViewController.swift
//  Adagio
//
//  Created by Vedant Shrivastava on 17/03/18.
//  Copyright © 2018 Vedant Shrivastava. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "loginView", sender: self);
    }

}

