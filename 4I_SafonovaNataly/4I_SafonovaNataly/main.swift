//
//  main.swift
//  4I_SafonovaNataly
//
//  Created by DNS on 08/04/2022.
//

import Foundation


enum windowsState{
    case open
    case close
}
enum motorState{
    case on
    case off
    }
class car{
    var windows: windowsState
    var motor: motorState
    init(windows: windowsState, motor: motorState){
    self.windows = windows
    self.motor = motor
    }
class sportCar: car{
    enum speedState{
        case on
        case off }
    var speed: speedState
    init(windows: windowsState, motor: motorState, speed: speedState){
    self.speed = speed
    super.init(windows: windows, motor: motor)
    }
}}
var carOne = sportCar(windows: .close, motor: .on, speed: .on)
var carTwo = sportCar(windows: .open, motor: .off, speed: .off)

class trunkCar: car{
    enum  trunkState{
        case full
        case empty}
    var trunk: trunkState
    init(windows: windowsState, motor: motorState, trunk: trunkState){
    self.trunk = trunk
    super.init(windows: windows, motor: motor)
    }
}
var carThree = trunkCar(windows: .close, motor: .on, trunk: .full)
var carFour = trunkCar(windows: .open, motor: .off, trunk: .empty)

carOne.motor = .off
print (carOne.motor)
carOne.windows = .open
print (carOne.windows)
carTwo.speed = .on
print (carTwo.speed)
carTwo.motor = .on
print (carTwo.motor)

carThree.windows = .open
print (carThree.windows)
carThree.trunk = .empty
print (carThree.trunk)
carFour.motor = .on
print (carFour.motor)
carFour.trunk = .full
print (carFour.trunk)