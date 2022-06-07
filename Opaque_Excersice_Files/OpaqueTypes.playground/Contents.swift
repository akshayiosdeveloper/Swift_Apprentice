import Foundation
protocol Appendable {
    associatedtype placeHolder
    func appendable(_ item: placeHolder)
}

class CustomArray: Appendable {
    typealias placeHolder = String
    var collection = [placeHolder]()
    func appendable(_ item: placeHolder) {
        collection.append(item)
        print(collection)
    }
}

func returnSomeValue()  -> some Appendable {
let cutomArray = CustomArray()
    cutomArray.appendable("A")
    cutomArray.appendable("B")
    cutomArray.appendable("C")
    
    return cutomArray
}

returnSomeValue()
