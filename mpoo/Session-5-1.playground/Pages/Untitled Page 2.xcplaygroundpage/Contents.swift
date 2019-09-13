//: [Previous](@previous)

import Foundation

var contador = 0

let incrementa = {
    contador += 1
}

incrementa()
incrementa()
incrementa()
print(contador)

let nombres = ["Pawis", "Sofia", "Alex", "Jorge"]

nombres.sorted()
nombres.sorted {
    $0.count > $1.count
}

var numeros = [1, 2, 3, 4, 5]

numeros.forEach{
    print("\($0): \($0 * $0)")
}

let filtro = numeros.filter{
    return $0 > 2
}
print(filtro)
//: [Next](@next)
