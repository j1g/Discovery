//
//  ViewController.swift
//  Discovery
//
//  Created by SDT2 on 2015. 10. 30..
//  Copyright © 2015년 tacademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var discovery: Discovery!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // create our UUID.
        let uuidStr = "239E9005-845B-4A64-A691-5511C7CC936E"
        let uuid = CBUUID(string: uuidStr)

        // start Discovery
        discovery = Discovery(UUID: uuid, username: "ias", usersBlock: { (users: [AnyObject]!, Bool) -> Void in
            print(users)
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

