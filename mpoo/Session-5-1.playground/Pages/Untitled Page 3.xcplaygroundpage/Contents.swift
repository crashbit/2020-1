//: [Previous](@previous)

import Foundation

var cadena: String = "Hola mundo"

extension String{
    func grita(){
        print("Auuuhhh")
    }
}


cadena.grita()

protocol Saltar{
    func salta()
}

extension Saltar{
    func agacharse(){
        print("Agachado")
    }
}

class jugador: Saltar{
    func salta() {
        print("saltando")
    }
}

let manitas = jugador()
manitas.agacharse()


//: [Next](@next)
