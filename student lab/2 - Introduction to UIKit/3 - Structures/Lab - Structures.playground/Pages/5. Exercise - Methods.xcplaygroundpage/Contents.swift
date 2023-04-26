/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("책 이름은 \(title)이며, \(author)이 작성한 이 책은 \(pages)쪽으로 여행하면서 읽기 좋은 책으로 선정되었다. 해당 책은 \(price)로 쉽게 구할 수 있다")
    }
}

let docent = Book(title: "해리포터", author: "롤링", pages: 400, price: 20000)
docent.description()

//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int

    mutating func like() {
        likes += 1
    }
}

var instagram = Post(message: "게시글", likes: 100, numberOfComments: 0)
instagram.like()
instagram.like()
instagram.like()
print(instagram)

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
