/*:
 ## App Exercise - Swimming Workouts
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Previous app exercises have introduced the idea that your fitness tracking app may allow users to track swimming workouts. Create a `SwimmingWorkout` struct below with properties for `distance`, `time`, and `stroke`. `distance` and `time` should be of type `Double` and will represent distance in meters and time in seconds, and `stroke` should be of type `String`.
 */
struct SwimmingWorkout {
    
    enum Stroke {
        //For each case, write case and then the name of the case option. I think I like this way best, but it is also possible to type case once on a line and then put each case option on the same line, separated by commas. (for example: case freestyle, butterfly, backstroke, breaststroke)
        case freestyle, butterfly, backstroke, breaststroke
    }
    
    var distance: Double
    var time: Double
    var stroke: Stroke

    //these are static variables. they are of type swimmingWourkout because that is what follows right after the colon :. Since swimmingWorkout has several different properties, they should be displayed as arrays. You put the brackets around [swimmingWorkout] to show that it is an array and then you do equals = []. The second brackets are the acutal array [] and having nothing between them means that the array is currently empty.
    
    static var freestyleWorkouts: [SwimmingWorkout] = []
    static var butterflyWorkouts: [SwimmingWorkout] = []
    static var backstrokeWorkouts: [SwimmingWorkout] = []
    static var breaststrokeWorkouts: [SwimmingWorkout] = []
    
    // The first thing I need to do in a switch statement (after typing switch) is type the name of your switch statement. So in my switch statemtnt above, I called it stroke because I assined stroke to reference to the enum Stroke. Then I put the curly brace down. and inside the braces I put each case of the enum. ( case .backstroke: ) for example. after the colon : make a new line and put your action you want.
    
    func save() {
        switch stroke {
        case .backstroke:
            SwimmingWorkout.backstrokeWorkouts.append(self)
        case .freestyle:
            SwimmingWorkout.freestyleWorkouts.append(self)
        case .breaststroke:
            SwimmingWorkout.breaststrokeWorkouts.append(self)
        case .butterfly:
            SwimmingWorkout.butterflyWorkouts.append(self)
        }
    }

}

/*:
 Allowing `stroke` to be of type `String` isn't very type-safe. Inside the `SwimmingWorkout` struct, create an enum called `Stroke` that has cases for `freestyle`, `butterfly`, `backstroke`, and `breaststroke`. Change the type of `stroke` from `String` to `Stroke`. Create two instances of `SwimmingWorkout` objects.
 */
let firstSwim = SwimmingWorkout(distance: 100, time: 120, stroke: .backstroke)
let secondSwim = SwimmingWorkout(distance: 200, time: 400, stroke: .freestyle)

/*:
 Now imagine you want to log swimming workouts separately based on the swimming stroke. You might use arrays as static variables on `SwimmingWorkout` for this. Add four static variables, `freestyleWorkouts`, `butterflyWorkouts`, `backstrokeWorkouts`, and `breaststrokeWorkouts`, to `SwimmingWorkout` above. Each should be of type `[SwimmingWorkout]` and should default to empty arrays.
 */
//see in the swimmingWorkout struct...

/*:
 Now add an instance method to `SwimmingWorkout` called `save()` that takes no parameters and has no return value. This method will add its instance to the static array on `SwimmingWorkout` that corresponds to its swimming stroke. Inside `save()` write a switch statement that switches on the instance's `stroke` property, and appends `self` to the proper array. Call save on the two instances of `SwimmingWorkout` that you created above, and then print the array(s) to which they should have been added to see if your `save` method works properly.
 */


firstSwim.save()
secondSwim.save()

print(SwimmingWorkout.backstrokeWorkouts)
print(SwimmingWorkout.freestyleWorkouts)

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
