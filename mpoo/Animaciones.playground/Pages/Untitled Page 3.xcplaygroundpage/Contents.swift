//: [Previous](@previous)


import UIKit
import PlaygroundSupport


let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

let square = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))

square.center = containerView.center
square.layer.cornerRadius = 20.0
square.backgroundColor = .white

containerView.addSubview(square)

let offset = CGPoint(x:-containerView.frame.maxX , y: 0)
let x: CGFloat = 0, y: CGFloat = 0

square.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y  + y)

square.isHidden = false


UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3, options: .curveEaseOut, animations: {
    
    square.transform = .identity
    square.alpha = 1
    
}, completion: nil)

PlaygroundPage.current.liveView = containerView

//: [Next](@next)


//: [Next](@next)
