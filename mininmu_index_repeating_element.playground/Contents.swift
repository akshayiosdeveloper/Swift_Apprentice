import UIKit
/*
Input:  { 5, 6, 3, 4, 3, 6, 4 }
Output: The minimum index of the repeating element is 1
 
 
Input:  { 1, 2, 3, 4, 5, 6 }
Output: Invalid Input
*/
let input = [5, 6, 3, 4, 3, 6, 4]

func minimumIndex_With_RepeatingElement(input: [Int]) -> Int {
    var result: Int? // result
    var dict:[Int:Int] = [:]   // Dict element
    for (index , element) in input.enumerated() {
        // check index exist the dictionary
        if let firstOccurence = dict[element] {
            
            if let previousLowestIndex = result {
                if firstOccurence < previousLowestIndex {
                    result  = firstOccurence
                }
                
            } else {
                result = firstOccurence
            }
        } else {
            // if not found then set the index
            dict[element] = index
        }
    }
    return result!
}

let element = minimumIndex_With_RepeatingElement(input: input)
