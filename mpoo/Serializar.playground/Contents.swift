import UIKit

struct User: Codable{
    var name: String
}


let jerry = User(name: "jerry")
let chofi = User(name: "chofi")

let usuarios = [jerry, chofi]

let encoder = JSONEncoder()
let defaults = UserDefaults.standard

if let encoded = try? encoder.encode(usuarios){
    defaults.set(encoded, forKey: "guardados")
}

if let guardado = defaults.object(forKey: "guardados") as? Data{
    let decoder = JSONDecoder()
    
    if let savedUser =  try? decoder.decode([User.self], from: guardado){
        print(savedUser)
    }
}
