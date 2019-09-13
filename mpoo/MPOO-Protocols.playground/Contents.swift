import UIKit

protocol Curso{
    func hablarIngles()
}

class Herrero: Curso{
    func hablarIngles() {
        print("padre hablando inglés")
    }
}

class Alumno: Herrero{
    override func hablarIngles() {
        print("como gringo de L.A.")
    }
}

class IngEE: Curso{
    func hablarIngles() {
        print("IEE habla ingles")
    }
}

class IC{
    
}

let octavio = Alumno()
let joss = IngEE()
let armin = Herrero()
let jerry = IC()

func entrarAlAntro( personaHablaIngles: Curso){
    personaHablaIngles.hablarIngles()
}

entrarAlAntro(personaHablaIngles: armin)

