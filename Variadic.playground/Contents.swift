import UIKit

struct Content {
    let title: String
}
struct Bucket {
    private(set) var content:[Content] = []
    mutating func add(_ newContent: Content...){
        content.append(contentsOf: newContent)
    }
}

var bucket = Bucket()
l












lweujrfei























bucket.add(content2)

