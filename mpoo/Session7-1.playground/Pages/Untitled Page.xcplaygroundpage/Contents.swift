import UIKit
import PlaygroundSupport

struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable{
    var trackName: String
}

let url = URL(string: "https://itunes.apple.com/search?term=metallica")

let task = URLSession.shared.dataTask(with: url!){
    (data, response, error) in
    
    let jsonDecoder = JSONDecoder()
    
    if let data = data, let resultados = try? jsonDecoder.decode(Results.self, from: data){
        for track in resultados.results{
            print(track.trackName)
        }
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
