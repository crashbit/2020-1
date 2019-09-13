//: [Previous](@previous)

import Foundation

struct Track{
    var imagen: String
    var url: String {
        didSet{
            imagen = oldValue
        }
        willSet{
            imagen = newValue
        }
        
    }
}

var track = Track(imagen: "hola.jpg", url: "adios.html")
print(track.imagen)
print(track.url)
track.url = "next.html"
print(track)
track.url = "pagina.html"
print(track)
//: [Next](@next)
