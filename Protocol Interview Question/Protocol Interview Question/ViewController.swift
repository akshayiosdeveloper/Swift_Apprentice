//
//  ViewController.swift
//  Protocol Interview Question
//
//  Created by Akshay Kumar on 30/06/22.
//

import UIKit

protocol P {
    func greetings()
}
class Base: P {
    func greetings(){
        print("greetings")
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let base = Base()
        base.greetings()
    }


}

