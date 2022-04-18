//
//  main.swift
//  5I_SafonovaNataly
//
//  Created by DNS on 12/04/2022.
//

import Foundation

enum windows{
    case open
    case closed
}
enum motor{
    case on
    case off
}
enum nitro{
    case nitroOn
    case nitroOff
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol car {
    var brand: String {get}
    var release: Int {get}
    var motorState: motor {get set}
    var windowsState: windows {get set}
}
extension car {
    mutating func changeEngineState(engineState: motor){
        self.motorState = motorState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class basicCar: car{
    var brand: String
    var release: Int
    var motorState: motor = .off
    var windowsState: windows = .closed
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var nitroState: nitro = .nitroOff
    var description: String{
        return "motor is \(motorState), windows is \(windowsState), nitro is \(nitroState), release date is \(release)"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var trunkState: luggage = .TrunkIsEmpty
    var description: String{
        return "motor is \(motorState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}
var ford = sportCar(brand: "Ford", release: 2018)
var volkswagen = trunkCar(brand: "Volkswagen", release: 1998)
ford.changeEngineState(engineState: .on)
ford.nitroState = .nitroOn
volkswagen.chageWindowsState(windowsState: .open)
volkswagen.trunkState = .trunkIsFull
print(ford.description)
print(volkswagen.description)