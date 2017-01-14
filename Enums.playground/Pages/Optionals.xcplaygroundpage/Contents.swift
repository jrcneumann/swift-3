struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Pasan", middleName: nil, lastName: "Something")

print(me)


let airportCodes = ["CDG": "Charles De Gualle"]

if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("Sorry, that key doesn't exist")
}


///

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below

if let movie = movieDictionary["Spectre"], let cast = movie["cast"] {
    leadActor = cast[0]
}


struct Friend {
    let name: String
    let age: String
    let address: String?
}


func new(friendDictionary: [String : String]) -> Friend {
    if let name = friendDictionary["name"], let age = friendDictionary {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}


func newFriend(friendDictionary: [String : String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    
    let address = friendDictionary["address"]
    return Friend(name: name, age: age, address: address)
    
}



struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String : String]) {
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["date"]
    }

}


		
