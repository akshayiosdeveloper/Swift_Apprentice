import Foundation
/*
Property wrappers are defined by structs, classes, or enums prefixed with the @propertyWrapper attribute.
Property wrappers must contain a wrappedValue field that provides the interface to get and set the value.
*/

@propertyWrapper struct Captialized {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
struct Name {
  @Captialized var firstName:String
  @Captialized var lastName: String
}
var user = Name(firstName: "john", lastName: "appleseed")
print(user.firstName)

