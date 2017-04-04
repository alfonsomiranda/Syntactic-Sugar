//: Playground - noun: a place where people can play

import UIKit

// ======== Initialization ========

// Without sugar

let arrayWithoutSugar: Array<String> = Array<String> (arrayLiteral: "one", "two", "three")

let dictionaryWithoutSugar: Dictionary<String, String> = Dictionary<String, String> (dictionaryLiteral: ("one", "1"), ("two", "2"), ("three", "3"))

// With sugar

let arrayWithSugar = ["one", "two", "three"]

let dictionaryWithSugar = ["one": "1", "two": "2", "three": "3"]


// ======== Conditional ========

// Without sugar

let condition = true
var resultWithoutSugar = ""

if condition {
    resultWithoutSugar = "OK"
} else {
    resultWithoutSugar = "FAIL"
}

// With sugar

let resultWithSugar = (condition) ? "OK" : "FAIL"


// ======== Default value ========

let a: String? = nil

// Without sugar

var vWithoutSugar = a
if a == nil {
    vWithoutSugar = ""
}

// With sugar

let vWithSugar = a ?? ""

// ======== Switch and enum ========

enum Options: Int {
    case iOS
    case android
    case hybrid
}

let option: Options = Options(rawValue: 1)!

switch option {
case .iOS:
    print("iOS")
case .android:
    print("android")
case .hybrid:
    print("hybrid")
}