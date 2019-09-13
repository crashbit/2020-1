import UIKit

func fibonacci(total: Int){
    var n1 = 0
    var n2 = 1
    var sig = 0
    var i = 0
    
    while i <  total{
        sig = n1 + n2
        i += 1
        print("El numero es \(sig)")
        n1 = n2
        n2 = sig
    }
}

fibonacci(total: 9)

func primos(numero: Int){
    
    for i in 2..<numero{
        if numero % i == 0{
            print("\(numero) no es primo")
            return
        }
    }
    print("\(numero) es primo")
}

primos(numero: 8)
