import UIKit

class Alumno{
    func leer(){
        print("Alumno leyendo")
    }
}

class Ingenieria: Alumno{
    func calculoVectorial(){
        print("Estudiando calculo")
    }
}

class Derecho: Alumno, Estudiar{
    func calculoVectorial() {
        print("Alumno estudiando calculo")
    }
}

protocol Estudiar{
    func calculoVectorial()
}

var sofia = Ingenieria()
var jose = Derecho()

extension String{
    func grita(){
        print("GRITANDO")
    }
}

var cadena: String = "Hola mundo"

cadena.grita()
