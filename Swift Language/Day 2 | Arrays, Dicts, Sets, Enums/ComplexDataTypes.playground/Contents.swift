let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

// Arrays
let beatles = [john, paul, george, ringo]

// Sets
// Unordered
// No duplicates
let colors = Set(["red", "green", "blue"])
var colors2 = Set(["red", "green", "blue", "blue"])

let song = [ "John Lennon": "Imagine" ]
let song2 = [ "Paul McCartney": "Yesterday" ]
let song3 = [ "George Harrision": "Here Comes The Sun" ]
let song4 = [ "Ringo Starr": "Yellow Submarine" ]
let song5 = [ "Ringo Starr": "Yellow Submarine" ]
let songs = Set([song, song2, song3, song4, song5])

songs.count

// Tuples
var name = (first: "Taylor", last: "Swift")
var arrTuple = [(first: "John", last: "Lennon"), (first: "Paul", last: "McCartney")]

name.0
name.first

// Dictionaries
let height = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

// Empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

// Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
