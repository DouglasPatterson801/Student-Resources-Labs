/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var typeCollection: [Any] = [6.4, 2.3, 3, 6, "happy", "sad", true, false]

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for entry in typeCollection {
    if entry is Double {
        print("The Double has a value of \(entry).")
    } else if entry is Int {
        print("The Int has a value of \(entry).")
    } else if entry is String {
        print("The String has a value of \(entry).")
    } else if entry is Bool {
        print("The Bool has a value of \(entry).")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var myDictionary: [String: Any] = ["Name": "Doug", "Height": 70, "Shoe": "9.5", "Awesome": true]
print(myDictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0.0

for entry in myDictionary.values {
    if entry is Double {
        total += 1
    }
    if entry is Int {
        total += 1
    }
    if let trueOrFalse = entry as? Bool {
        if trueOrFalse == true {
            total += 2
        } else {
            total -= 3
        }
    }

}

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var totalTwo: Double = 0

for item in myDictionary.values {
    if let item = item as? Double {
        totalTwo += item
    }
    if let item = item as? Int {
        totalTwo += Double(item)
    }
    if let item = item as? String {
        if let convertedDouble = Double(item) {
        totalTwo += convertedDouble
        }
    }
}

print(totalTwo)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
