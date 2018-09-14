/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the funtion and observe the printout.
 */
func displayIntroduction() {
    print("Hello, my name is Doug. Pleased to meet you.")
}
displayIntroduction()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = arc4random_uniform(UInt32(5))` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts. Note that the random number generation will not work unless your function is declared after the `import Foundation` statement below. This is because the `arc4random_uniform(_:)` function is declared in the `Foundation` framework.
 */
import Foundation

let randomNum = arc4random_uniform(UInt32(5))

switch randomNum {
case 0:
    print("Don't count on it.")
case 1:
    print("Not likely.")
case 2:
    print("Yeah, it could happen.")
case 3:
    print("Most definitely!")
default:
    print("Why not happen for you?")
}

randomNum()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
