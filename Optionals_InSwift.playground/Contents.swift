import UIKit

struct Student {
    let name: String?
    let address: String?
}

let obj = Student(name: "Akshay", address: "Kumar")
if let name  = obj.name {         // optional binding
    print("optinal binding-->\(name)")
}

// 2nd way  guard let
// guard is only valid inside function and loops due to the return keyword
// if you write guard statement outside the function then you got return keyword error "return invalid outside of function"
// but throw key word is valid outside the function

 func test() {
guard let name1 = obj.name  else { return }
print("guard statement -->\(name1)")
}
test()
// 3rd way is nilcalcassing operater
let name2 = obj.name ?? "default value"
print("using nilcolcassing opearator -> \(name2)")

// 4th forced wrapping !
let name3 = obj.name!
print("forced wrapping ->\(name3)")


/* optional chaining */
// optional chaining is the process of query on properties or calling methods , or subscriped on optional values.
//multiple queries chained together, and entire chain failed gracefully  if  link in the chain is nil

struct School {
    let name: String?
}
let school = School(name: nil)
print(school.name?.uppercased())
