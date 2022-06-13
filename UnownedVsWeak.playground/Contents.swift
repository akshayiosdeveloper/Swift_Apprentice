import UIKit

class Car {
    let id : Int
   weak var vehicle: Vehicle?
    init(id:Int , vehicle: Vehicle?) {
        self.id = id
        self.vehicle = vehicle
        print("\(self)--> allocated")
    }
    deinit {
        print("\(self)--> deallocated")
    }
}
class Vehicle {
    var car:Car?
    let name:String
    init(name:String , car: Car?) {
        self.name = name
        self.car = car
        print("\(self)--> allocated")
    }
    deinit {
        print("\(self)--> deallocated")
    }
}

//Car(id: 1, vehicle: nil)

var vehicle:Vehicle? = Vehicle(name: "Ford", car: nil)
var car:Car? = Car(id: 4, vehicle: vehicle)
vehicle?.car = car
car?.vehicle = vehicle
car = nil
vehicle  = nil

