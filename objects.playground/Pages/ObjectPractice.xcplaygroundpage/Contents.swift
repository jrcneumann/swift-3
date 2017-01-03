
class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

// Enter your code below

class Car: Vehicle {
    let numberOfSeats: Int = 4
    
    override init(withDoors doors: Int, andWheels wheels: Int) {
        super.init(withDoors: doors, andWheels: wheels)
    }
}

let someCar = Car(withDoors: 6, andWheels: 4)
let seats = someCar.numberOfSeats

print(seats)



class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below

class Doctor: Person {
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
    
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Smith")


struct Tag {
    let name: String
}

struct Post {
    let title: String
    let  author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost = Post(title: "iOS", author: "Apple", tag: Tag(name: "Swift"))




//////////




let postDescription = firstPost.description()


class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I'm a machine!")
    }
}

// Enter your code below

class Robot: Machine {
    override func move(_ direction: String) {
        switch direction {
        case "Up":
            return location.y += 1
        case "Down":
            return location.y -= 1
        case "Left":
            return location.x -= 1
        case "Right":
            return location.x += 1
        default:
            break
        }
    }

}




