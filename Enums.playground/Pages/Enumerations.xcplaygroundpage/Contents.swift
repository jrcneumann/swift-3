let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func dayType(for day: String) -> String {
    
    switch day {
    case "Saturday", "Sunday":
        return "Weekend"
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
        return "Weekday"
    default:
        return "Not valid day"
    }
    
}

func isNotificationMuted(on day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

let result = dayType(for: week[4])
let isMuted = isNotificationMuted(on: result)


enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekend
    case weekday
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday:
        return .weekend
    default:
        return .weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend:
        return true
    case .weekday:
        return false
    }
}


let type = dayType(for: .monday)
let muted = isNotificationMuted(on: .weekend)



import UIKit

enum ColorComponent {
    case rgb(red: Float, green: Float, blue: Float, alpha: Float)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()



//// Enum ButtonBar



enum BarButton {
    case done(title: String)
    case edit(title: String)
    
    func button() -> UIBarButtonItem {
        switch self {
        case .done(let title):
            return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        case .edit(let title):
            return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        }
    }
    
}

let done = BarButton.done(title: "Save")
let button = done.button()



/// Raw Values


enum Coin: Double {
    case penny = 0.01
    case nickle = 0.05
    case dime = 0.10
    case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickle, .dime, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
        }
            return total
}

print(total)





