//
//  HomeViewController.swift
//  WeakVsUnowned
//
//  Created by Akshay Kumar on 11/06/22.
//

import UIKit
import Foundation
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self) -> allocated")
        self.addTimer()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
    }
    func addTimer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            self?.addTimer()
        }
    }
    func printHello() {
        print("hello ")
    }
    @IBAction func backTap(_ sender: Any) {
        dismiss(animated: true)
    }
    deinit  {
        print("\(self) -> deallocated")
    }
    
}
