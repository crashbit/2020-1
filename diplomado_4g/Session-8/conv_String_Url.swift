import UIKit

let palabra = "jose jose"

if let encoded = palabra.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed ){
        print(encoded)
}
