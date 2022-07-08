import UIKit

struct Sport {
    var name: String
    var isOlympicsSport: Bool
    var olympicStatus: String {
        get {
            print("get is called ")
            return name
            
        }
        set {
            print("set is called")
            name = newValue
        }
    }
}
var obj = Sport(name: "Akshay", isOlympicsSport: true)
obj.name = "Kumar"
