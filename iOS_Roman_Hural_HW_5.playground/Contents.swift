//1 task
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func incrementOfLikes() {
        likes += 1
    }
    
    mutating func incrementOfComments() {
        numberOfComments += 1
    }
}

var firstPost = Post(message: "Hello", likes: 0, numberOfComments: 0)
print("There are \(firstPost.likes) likes and \(firstPost.numberOfComments) comments BEFORE calling methods")
firstPost.incrementOfLikes()
firstPost.incrementOfComments()
print("There are \(firstPost.likes) likes and \(firstPost.numberOfComments) comments AFTER calling methods")

//2 task
struct Height {
    var heightInInches: Double
    var heightInCentimetres: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        heightInCentimetres = heightInInches * 2.54
    }
    
    init(heightInCentimetres: Double) {
        self.heightInCentimetres = heightInCentimetres
        heightInInches = heightInCentimetres * 0.3937
    }
}

var someHeight = Height(heightInCentimetres: 171.5)
print("This man has \(someHeight.heightInCentimetres) height in CMs and \(someHeight.heightInInches) height in inches")

var someHeight2 = Height(heightInInches: 70)
print("This man has \(someHeight2.heightInInches) height in inches and \(someHeight2.heightInCentimetres) height in CMs")

//3 task
class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
}

var mySpaceship = Spaceship(name: "Victory", health: 100, position: 0)
mySpaceship.name
mySpaceship.moveRight()
mySpaceship.moveRight()
mySpaceship.wasHit()
mySpaceship.moveLeft()
mySpaceship.moveRight()
mySpaceship.moveRight()
mySpaceship.moveRight()
mySpaceship.position
mySpaceship.health

//4 task
class Fighter: Spaceship {
    var weapon: String = ""
    var remainingFirePower: Int = 5
    
    func fire() {
        if remainingFirePower <= 0 {
            print("You're out of patrons")
        }
        remainingFirePower -= 1
    }
}

let myFighter = Fighter(name: "JJ", health: 100, position: 4)
myFighter.name
myFighter.health
myFighter.position
myFighter.weapon = "Blaster"
myFighter.remainingFirePower
myFighter.fire()
myFighter.fire()
myFighter.fire()
myFighter.fire()
myFighter.fire()
myFighter.remainingFirePower
myFighter.fire()
myFighter.moveRight()
myFighter.position
