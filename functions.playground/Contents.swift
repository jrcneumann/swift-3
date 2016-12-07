// Carpet Calculator

func areaWith(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    return areaOfRoom
}

areaWith(length: 10, width: 10)


// Temp Conversion

func temperatureInFahrenheit(temperature: Double) -> Double {
    let convertedTemperature = ((temperature * 9) / 5) + 32
    return convertedTemperature
}

let fahrenheitTemp = temperatureInFahrenheit(temperature: 24.0)


// Argument Labels

func removeValue(havingValue value: String) {
    
}

removeValue(havingValue: "A")

func getRemainder(value a: Int, divisor b: Int) -> Int {
    return(a % b)
}


let result = getRemainder(value: 10, divisor: 3)

// Default Values

func carpetCost(havingArea area: Int, carpetColor color: String) -> Int {
    // Grey Carpet = $1/sq ft
    // Tan Carpet = $2/ sq ft
    // Deep Blue = $3/sq ft
    
    var price = 0
    
    switch color {
    case "grey":
        price = area * 1
    case "tan":
        price = area * 2
    case "blue":
        price = area * 4
    default:
        price = 0
    }
    
    return price
    
}

carpetCost(havingArea: 100, carpetColor: "blue")


// Challenge

func coordinates(for location: String) -> (Double,Double) {
    switch location {
        
    case "Eiffel Tower":
        return (48.8582, 2.2945)
    case "Great Pyramid":
        return (29.9792, 31.1344)
    case "Sydney Opera House":
        return (33.8587, 151.2140)
    default: return (0,0)
        
    }
}


coordinates(for: "Great Pyramid")

