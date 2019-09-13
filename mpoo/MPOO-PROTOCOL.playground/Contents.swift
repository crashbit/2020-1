import UIKit

class Alumno{
    
    func leer(){
        print("Alumno leyendo")
    }
}

protocol Ejercicio{
    func correr()
}

class Ingenieria: Alumno, Ejercicio{
    func correr() {
        print("Ingeniero corriendo")
    }
    
    override func leer(){
        print("Ingeniero leyendo")
    }
}

class Ciencias: Alumno, Ejercicio{
    func correr() {
        print("Los de ciencias corren")
    }
}

var luis = Ingenieria()
var jose = Ciencias()
luis.leer()
jose.correr()


