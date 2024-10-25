//: [Previous](@previous)

import Foundation

let someInts = [1, 4, 5, 19, 3]

print("======= iterating through ints array ===========")
for num in someInts {
    print("my num is \(num)")
}

print("=========== iterating through ints array with enumerated() ===========")

for (index, num) in someInts.enumerated() {
    print("my num at index \(index) is \(num)")
}

let intsSet:Set<Int> = [1, 1, 2, 2, 3, 3, 4]

print("======= iterating through a set of ints (iteration order is random) =========")
for num in intsSet {
    print("my num in the set is \(num)")
}

let myDictionary:Dictionary<String, Int> = ["a": 1, "b": 2, "c": 3]

print("====== iterating through keys/values of dictionary")
for (key, value) in myDictionary {
    print("for the key \(key), the value is \(value)")
}
print("====== set methods ======")
let set1:Set<Int> = [1, 2, 3]
print("set1 is \(set1)")

let set2:Set<Int> = [2, 3, 4]
print("set2 is \(set2)")

print("The values that are in both are \(set1.intersection(set2)) (intersection of set1 & set2)")
print("All of the values from both are \(set1.union(set2)) (union of set1 & set2)")

print("loops other than iterating through collections")

print("0 to 10 with 0...10")
for num in 0...10 {
    print(num)
}

print("repeat while")

var count = 0

print("I am going to count to 10 with repeat-while loop!")
repeat {
    print(count)
    count += 1
} while (count <= 10)

print("I am going to count to 10 with a while loop!")
// count can be reassigned to 0 because it is a variable (not a constant)
count = 0

while (count <= 10) {
    print(count)
    count += 1
}


print("==== optional practice ====")

print("if let practice")
var optInt:Int? = nil

if let optIntVal = optInt {
    print("optInt is \(optIntVal)")
} else {
    print("optInt was nil")
}

optInt = 10

if let optIntVal = optInt {
    print("optInt is \(optIntVal)")
} else {
    print("optInt was nil")
}

print("guard let practice")
func printIfNotNil(maybeNil: Int?) {
    guard let someVal = maybeNil else {
        print("maybeNil argument was nil! not printing it.")
        return
    }
    print("maybeNil was not nil! printing it:")
    print(someVal)
}

printIfNotNil(maybeNil: nil)
printIfNotNil(maybeNil: -9)

print("null-coalescing practice")
func printIfNotNilOrTen(maybeNil: Int?) {
    print(maybeNil ?? 10)
}

print("call with nil:")
printIfNotNilOrTen(maybeNil: nil)
print("call with -9:")
printIfNotNilOrTen(maybeNil: -9)
