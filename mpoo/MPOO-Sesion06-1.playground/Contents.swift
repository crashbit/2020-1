import UIKit

class Padre{
    var dato: String = ""
    
    func imprime(){
        print("dato")
    }
}

class Origen: Padre{
    var datoOrigen: String = ""

    override func imprime() {
        print("Yo imprimo mi información")
    }
}


class Destino: Padre{
    var datoDestino: String = ""
}


let cdmx = Origen()
let cancun = Destino()
let houston = Padre()

var viajes = [cdmx, cancun, houston]

func ejecutaImpresion(objeto: Padre){
    objeto.imprime()
}

ejecutaImpresion(objeto: cdmx)
ejecutaImpresion(objeto: cancun)
ejecutaImpresion(objeto: houston)

for viaje in viajes{
    viaje.imprime()
}
