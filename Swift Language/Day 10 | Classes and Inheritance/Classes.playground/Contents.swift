// Creating your own classes
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

final class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Poodle(name: "Poppy")
poppy.makeNoise()

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
print(taylor.name)

taylor.name = "Justin Bieber"
print(taylor.name)

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

