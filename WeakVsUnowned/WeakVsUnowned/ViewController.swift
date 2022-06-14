//
//  ViewController.swift
//  WeakVsUnowned
//
//  Created by Akshay Kumar on 11/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var vals: Set<STRING> = Set()
        vals.insert
//        let vals = ("val" , 1)
//        print("\(self) -> allocated")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextTab(_ sender: Any) {
      guard  let viewController = storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else { return }
        present(viewController, animated: true)
    }
    
    
    deinit  {
        print("\(self) -> deallocated")
    }

}

