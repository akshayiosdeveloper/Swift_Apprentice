//
//  ViewController.swift
//  InheritanceVsProtocol
//
//  Created by Akshay Kumar on 14/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
   let iosEngineer = iOSEngineer(name: "Akshay")
        iosEngineer.getDetails()
        iosEngineer.getLanguageExpertise()
        iosEngineer.getDevopsExpertise()
        iosEngineer.getBackEndEngineerrExpertise()
    }

}

class Employee {
    let name: String
    init(name:String) {
        self.name = name
    }
    func getDetails() {
        print("Name is \(name)")
    }
}

protocol iOSEngineerSkillSet {
    func getLanguageExpertise()
}

protocol BackEndEngineerSkillSet {
    func getBackEndEngineerrExpertise()
}

protocol DevOpsSkillSet {
    func getDevopsExpertise()
}

// got the error because multiple inheritance is not possible .. solve this problem with protocol
class iOSEngineer: Employee,iOSEngineerSkillSet, DevOpsSkillSet , BackEndEngineerSkillSet {
}

class DevopsEngineer : Employee,DevOpsSkillSet {
}

class BackEndEngineer : Employee,BackEndEngineerSkillSet {
}



extension iOSEngineerSkillSet {
    func getLanguageExpertise() {
        print("Swift")
    }
}

extension DevOpsSkillSet {
    func getDevopsExpertise() {
        print("Dev ops engineer")
    }
}

extension BackEndEngineerSkillSet {
    func getBackEndEngineerrExpertise() {
        print("backend engineer")
    }
}
