//: Playground - noun: a place where people can play

import UIKit

protocol Sugar {}

extension Sugar where Self: Any {
    func with(_ block: (inout Self) -> Void) -> Self {
        var copy = self
        block(&copy)
        return copy
    }
    
    
}

extension CGRect: Sugar {}

let frame = CGRect().with {
    $0.origin.x = 10
    $0.origin.y = 20
}