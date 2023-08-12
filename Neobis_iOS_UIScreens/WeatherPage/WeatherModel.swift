import Foundation

struct WeatherModel {
    let temperature: Double
    let conditions: String
    // Add more properties as needed
    
    // You can also define methods for fetching weather data from an API or processing data
    
    static func sampleData() -> WeatherModel {
        return WeatherModel(temperature: 25.0, conditions: "Sunny")
    }
}
