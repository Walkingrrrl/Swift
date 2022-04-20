//
//  main.swift
//  6I_SafonovaNataly
//
//  Created by DNS on 18/04/2022.
//
import Foundation

struct bank {
    var name: String
    var number: Int }

extension bank: CustomStringConvertible {
    var description : String {
        return "имя: \(name), порядковый номер: \(number)"}
}

struct queue <T> {
    private var elements: [T] = []
    public var isEmpty: Bool {
        return elements.count == 0 }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("Очередь пуста")
            return nil
        } else {
            print("Последний элемент \(elements.last!)")
            return elements.last}
    }
    
    public var front: T? {
        if isEmpty {
            print("Очередь пуста")
            return nil
        } else {
            print("Первый элемент \(elements.first!)")
            return elements.first}
    }
    
    func printMyQueue() {
        print(elements)}
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)}}
        return result }}

var pupil = queue<bank>()
pupil.enqueue(element: .init(name: "Мария", number: 3))
pupil.enqueue(element: .init(name: "Юрий", number: 6))
pupil.enqueue(element: .init(name: "Елена", number: 4))
pupil.enqueue(element: .init(name: "София", number: 5))
pupil.enqueue(element: .init(name: "Владимир", number: 1))

pupil.printMyQueue()
pupil.head
pupil.front

let honoursPupil = pupil.myFilter(predicate: {$0.number == 5})
print(honoursPupil)