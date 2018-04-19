//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let timeInSeconds:Double = 360000003

let formatter = DateComponentsFormatter()
formatter.unitsStyle = .full
formatter.includesApproximationPhrase = true
formatter.includesTimeRemainingPhrase = false
formatter.allowsFractionalUnits = false
formatter.allowedUnits = [.minute, .hour, .day, .month, .year]
formatter.collapsesLargestUnit = false
formatter.maximumUnitCount = 2

let outputString = formatter.string(from: timeInSeconds)
print(outputString!)
