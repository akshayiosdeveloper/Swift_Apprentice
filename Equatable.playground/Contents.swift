import UIKit

struct StreetAddress {
    let number: String
    let street: String
    let unit: String?
    init(_ number: String, _ street: String, unit: String? = nil) {
        self.number = number
        self.street = street
        self.unit = unit
    }
}

extension StreetAddress: Equatable {
    static func == (lhs:StreetAddress , rhs: StreetAddress) -> Bool {
        return lhs.number == rhs.number && lhs.street == rhs.street
    }
}
let addresses = [StreetAddress("1490", "Grove Street"),
                 StreetAddress("2119", "Maple Avenue"),
                 StreetAddress("1400", "16th Street")]
let home = StreetAddress("1400", "16th Street")


print(addresses[2].number == home.number)
