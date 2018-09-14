/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
//    I DON'T NEED TO TYPE Book.title or Book.author etc. Because I am calling on these properties while still in the scope of the struct
    func bookDescription() {
        print("My favorit book is \(title) by \(author). It has \(pages) and can be purchased on amazon.com for $\(price).")
    }
    
}

let favoriteBook = Book(title: "The Alchemist", author: "Paulo Coelho", pages: 208, price: 5.64)


//IN THIS EXAMPLE I CALL THE INSTANCE FIRST AND THEN CALL THE FUNC BY TYPING .bookDescription()

favoriteBook.bookDescription()

/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        self.likes += 1
    }
}

var myRecentPost = Post(message: "Dude, I scored 400 on pinball!", likes: 19, numberOfComments: 14)

print(myRecentPost.likes)

myRecentPost.like()

print(myRecentPost.likes)

//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
