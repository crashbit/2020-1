import UIKit

struct Pelicula{
    var poster: String
    var titulo: String
    var clasificacion: String
    var duracion: Int
    var sinopsis: String
    var genero: String
    var valoracion: Double
}

struct Sala{
    var tipo: String
    // horarios_reservados
    var cupo_max: Int
}

struct Funcion{
    var sala: Sala
    var hora_inicio: String
    var hora_fin: String
    var pelicula: Pelicula
    var cupo_disponible: Int
    var precio: Int
}

struct Cartelera{
    var funciones : [Funcion]
}

var sala = Sala(tipo: "VIP", cupo_max: 50)
var pelicula = Pelicula(poster: "imagen.jpg", titulo: "IT", clasificacion: "B15", duracion: 120, sinopsis: "El payaso que espanta", genero: "terror", valoracion: 4.0)

var funcion = Funcion(sala: sala, hora_inicio:"14:00", hora_fin: "16:00", pelicula: pelicula, cupo_disponible: 40, precio: 70)

var cartelera = Cartelera(funciones: [funcion])
