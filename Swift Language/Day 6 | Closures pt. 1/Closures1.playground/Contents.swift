// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters in a closure
let cruising = { (place: String) in
    print("I am crusing to \(place)!")
}

cruising("London")

// Test Question 6
var pickFruit = { (name: String) in
    switch name {
    case "strawberry":
        fallthrough
    case "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry")

// Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

// Returning values from a closure with no parameters
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
func travelTrailing(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travelTrailing {
    print("I'm driving in my car")
}

// Trailing closure syntax test questions
func doTricks(tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

doTricks(tricks: {
    print("BARK")
})

doTricks() {
    print("BARK")
}

doTricks {
    print("BARK")
}

