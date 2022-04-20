//
//  main.swift
//  7I_NatalySafonova
//
//  Created by DNS on 20/04/2022.
//

import Foundation

enum CreditCardOperationError: Error {
    case insufficientFunds (moneyNeeded: Double)
    case balanceStop}

struct thing {
    var price: Double}

class CreditCardOperation {
    let limit: Double = -50000
    var balance: Double = 0
    var cardIsBlocked = false
    
    func buySomethig(thing: thing)throws {
    guard cardIsBlocked == false else{
    throw CreditCardOperationError.balanceStop}
        
    guard thing.price <= (-limit + self.balance) else {
    if balance < 0 {
    throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit + balance)
    } else {
    throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit - balance)}}
        balance = self.balance - thing.price}
    
    func depositeMoney (someMoney: Double) {
    balance = self.balance + someMoney}
    
    func printBalance() {
    print ("Баланс: \(balance) руб.")}
    
    func changeCardState(cardIsBlocked: Bool) {
    switch cardIsBlocked {
    case true:
    self.cardIsBlocked = true
    case false:
    self.cardIsBlocked = false }}}

extension CreditCardOperationError: CustomStringConvertible {
    var description: String {
    switch self {
    case .insufficientFunds(let moneyNeeded): return "Недостаточно средств. Баланс: \(operation.balance) руб."
    case .balanceStop: return "Ваш баланс заблокирован, пожалуйста, обратитесь в банк"}}}

let operation = CreditCardOperation()
do {
    try operation.buySomethig(thing: .init(price: 21999))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.printBalance()
operation.depositeMoney(someMoney: 7699)
operation.printBalance()
do {
    try operation.buySomethig(thing: .init(price: 990))
} catch let error as CreditCardOperationError {
    print(error.description)}

operation.printBalance()
do {
    try operation.buySomethig(thing: .init(price: 22999))
} catch let error as CreditCardOperationError {
    print(error.description)}

operation.printBalance()

operation.changeCardState(cardIsBlocked: true)

do {
    try operation.buySomethig(thing: .init(price: 6990))
} catch let error as CreditCardOperationError {
    print(error.description)}
