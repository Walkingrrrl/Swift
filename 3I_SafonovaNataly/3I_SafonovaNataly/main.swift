//
//  main.swift
//  3I_SafonovaNataly
//
//  Created by DNS on 04/04/2022.
//

import Foundation

enum windowsState{
    case open, close
}
enum trunkState{
    case full, empty
}
enum motorState {
    case on, off
}

struct sportCar {
    let model: String
    let releaseYear: Double
    let trunkVolume: Double
    var motor: motorState{
        willSet {if newValue == .on
            { print ("Мотор нужно заглушить") }
            else {print ("Мотор нужно завести") }}
        }
    var windows: windowsState{
    willSet {if newValue == .open
        { print ("Окна сейчас откроются") }
        else {print ("Окна сейчас закроются") }}
    }
    var trunk: trunkState{
        willSet {if newValue == .full
            { print ("Разгрузить багажник") }
            else {print ("Наполнить багажник") }}
        }
    }

var carOne = sportCar(model: "Ford Focus", releaseYear: 1998, trunkVolume: 100, motor: .on, windows: .close, trunk: .empty)
var carTwo = sportCar(model: "Ford Focus", releaseYear: 1998, trunkVolume: 80, motor: .off, windows: .open, trunk: .full)

struct trunkCar {
    let modelTrunk: String
    let releaseYearTrunk: Double
    let trunkVolumeTrunk: Double
    var motorTrunk: motorState{
        willSet {if newValue == .on
            { print ("Мотор нужно заглушить") }
            else {print ("Мотор нужно завести") }}
        }
    var windowsTrunk: windowsState{
    willSet {if newValue == .open
        { print ("Окна сейчас откроются") }
        else {print ("Окна сейчас закроются") }}
    }
    var trunkTrunk: trunkState{
        willSet {if newValue == .full
            { print ("Разгрузить багажник") }
            else {print ("Наполнить багажник") }}
        }
}

var carThree = trunkCar(modelTrunk: "Volkswagen Crafter", releaseYearTrunk: 2006, trunkVolumeTrunk: 300, motorTrunk: .on, windowsTrunk: .close, trunkTrunk: .empty)
var carFour = trunkCar(modelTrunk: "Volkswagen Crafter", releaseYearTrunk: 2006, trunkVolumeTrunk: 450, motorTrunk: .off, windowsTrunk: .open, trunkTrunk: .full)

carOne.motor = .off
carOne.windows = .open
carTwo.trunk = .empty
carTwo.motor = .on


carThree.windowsTrunk = .open
carThree.trunkTrunk = .full
carFour.motorTrunk = .on
carFour.windowsTrunk = .close
