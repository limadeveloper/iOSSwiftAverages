//: Playground - noun: a place where people can play
//
// http://www.somatematica.com.br/fundam/medias.php

import UIKit

let data = [
    ["point": 8.0, "weight": 3],
    ["point": 7.5, "weight": 3],
    ["point": 5.0, "weight": 2],
    ["point": 4.0, "weight": 2]
]

func getArithmeticAverage() -> Double {
    
    var points = [Double]()
    
    if data.count > 0 {
        for item in data {
            guard let point = item["point"] as? Double else { continue }
            points.append(point)
        }
    }
    
    guard points.count > 0 else { return 0 }
    
    print("points: \(points)")
    
    let result = points.reduce(0) { $0 + $1 } / Double(points.count)
    
    return result
}

func getWeightedAverage() -> Double {
    
    var multiplications = [Double]()
    var weights = [Int]()
    
    if data.count > 0 {
        for item in data {
            
            guard let point = item["point"] as? Double else { continue }
            guard let weight = item["weight"] as? Int else { continue }
            
            let multiplication = point * Double(weight)
            
            multiplications.append(multiplication)
            weights.append(weight)
        }
    }
    
    guard multiplications.count > 0 else { return 0 }
    guard weights.count > 0 else { return 0 }
    
    print("weights: \(weights)")
    print("multiplications: \(multiplications)")
    
    let result = multiplications.reduce(0) { $0 + $1 } / Double(weights.reduce(0) { $0 + $1 })
    
    return result
}

func getSum() -> Double {
    
    var points = [Double]()
    
    if data.count > 0 {
        for item in data {
            guard let point = item["point"] as? Double else { continue }
            points.append(point)
        }
    }
    
    guard points.count > 0 else { return 0 }
    
    let result = points.reduce(0) { $0 + $1 }
    
    return result
}

let arithmeticAverage = getArithmeticAverage()
let weightedAverage = getWeightedAverage()
let sum = getSum()

print("\nRESULTS:")
print("arithmetic average: \(arithmeticAverage)")
print("weighted average: \(weightedAverage)")
print("sum: \(sum)")
