/*:
 ## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance = Double.init()
    var time = Double.init()
    var elevation = Double.init()

    func postWorkoutStats() {
        print(distance, time, elevation)
    }
}
    let myWorkout = RunningWorkout(distance: 20, time: 40, elevation: 1300)

myWorkout.postWorkoutStats()





/*:
 A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
 */
struct Steps { 
    var steps: Int
    var goal: Int
    
    mutating func takeSteps() {
        steps += 1
    }
}

var mySteps = Steps(steps: 20, goal: 100)

print(mySteps.steps)

mySteps.takeSteps()

print(mySteps.steps)
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
