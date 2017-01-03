// Modling a tower defence game

struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    /// Returns surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
    
}

let coordinatePoint = Point(x: 0, y: 0)

coordinatePoint.points()

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y:Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
    
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    

    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Boom")
        } else {
            print("Bummer")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        
        return false
        
    }
    
}


let tower = Tower(x: 0, y: 0)
let badEnemy = Enemy(x: 1, y: 1)

tower.fire(at: badEnemy)
badEnemy.life



class superEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
    
}


class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
}



// Shape Class
class Shape {
    var numberOfSides: Int
    
    init(sides: Int) {
        self.numberOfSides = sides
    }
    
}

let someShape = Shape(sides: 3)







// Business Class ;)
struct Location {
    let latitude: Double
    let longitude: Double
}


class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location) {
        self.location = location
        self.name = name
    }
    
}

let someBusiness = Business(name: "ACME", location: Location(latitude: 99.0, longitude: 90.0))




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













