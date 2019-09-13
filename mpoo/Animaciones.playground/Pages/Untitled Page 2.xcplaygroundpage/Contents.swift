//: [Previous](@previous)

import UIKit
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

let square = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))

square.center = containerView.center
square.layer.cornerRadius = 20.0
square.backgroundColor = .white

containerView.addSubview(square)

//square.alpha = 0
//square.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

UIView.animate(withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.55, initialSpringVelocity: 3, options: .curveEaseOut, animations: {
    
    square.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
    square.alpha = 0
    
}, completion: nil)

PlaygroundPage.current.liveView = containerView

//: [Next](@next)
