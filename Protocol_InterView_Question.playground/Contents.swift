import UIKit

protocol A {
    func printName()
}
protocol B {
    func printName()
}

extension A  {
    func printName() {
        print("Calling class A")
    }
}

extension B {
    func printName(){
        print("Calling class B")
    }
}

class Poly : A ,B {

}
let obj = Poly()
obj.printName()

