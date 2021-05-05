// Closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// Closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names
travel {
    "I'm going to \($0) in my car"
}

// Multiple Parameters
func travel2(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel2 {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions
func travel3() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel3()
result("London")
let result2 = travel3()("London")

// Capturing values
func travel4() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result4 = travel4()
result4("London")
result4("London")
result4("London")
result4("London")

