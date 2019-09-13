import UIKit

//dismiss(animation: true, completion: (()->Void?) )

//Closures = lambda

var myClosure : (Int, Int) -> Int

myClosure = { (a: Int, b: Int) -> Int in
    return a + b
}


let resultado = myClosure(3, 5)

print(resultado)

myClosure = { (a, b) in a + b}

myClosure = { $0 + $1 }

func operaciones(a: Int, b:Int, funcion: (Int, Int)->Int) -> Int{
    let resultado = funcion(a, b)
    return resultado
}

operaciones(a: 6, b: 4, funcion: myClosure)
