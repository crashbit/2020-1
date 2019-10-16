import UIKit
import PlaygroundSupport

struct Resultado: Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
}

let url = URL(string: "https://itunes.apple.com/search?term=metallica")

let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
    if let error = error{
        print(error.localizedDescription)
        return
    }
    
    if let data = data, let contenido = try? jsonDecoder.decode(Resultado.self, from: data){
        let tracks = contenido.results
        for track in tracks{
            print(track.trackName)
        }
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
