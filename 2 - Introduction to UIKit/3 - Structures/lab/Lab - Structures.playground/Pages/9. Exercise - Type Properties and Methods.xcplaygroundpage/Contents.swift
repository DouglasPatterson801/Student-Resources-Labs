/*:
 ## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    var userName: String
    var email: String
    var age: Int
    static var currentUser: User = User(userName: "doug1234", email: "doug@doug.com", age: 28)
    
    
    static func logIn(user: User) {
// The perameter of logIn called [user] is defined as having a [User] (referring to the struct) value. The perameter is PASSED IN to the implementation of the function.
        currentUser = user
        print("\(currentUser.userName) has logged in.")
    }
    
}
print(User.logIn(user: User.currentUser))
let jeff: User = User(userName: "Jeff", email: "Jeff@jeff.com", age: 30)

User.currentUser
User.logIn(user: jeff)
User.currentUser

let myUserInfo = User(userName: "doug1234", email: "doug@doug.com", age: 28)



/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */



// I'm declaring eric and giving it a value of User. When I utilize User, I have to specify all the perameters that come with it.
let eric: User = User(userName: "Eric", email: "eric.com", age: 30)
//Then I call the function using the ERIC perameters->
User.logIn(user: eric)


//Or I can combine those two steps like this:
User.logIn(user: User(userName: "Tom", email: "tom.com", age: 30))
//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
