/*
POP IN
https://miro.medium.com/max/496/1*mtdN-TRqEZnLMI3EYAKVOQ.gif
*/


import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))

// Create the square and add it to container
let square = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
square.center = containerView.center
square.layer.cornerRadius = 20.0
square.backgroundColor = UIColor.white
containerView.addSubview(square)

// make the square not visible and scale it to 0.5x
square.alpha = 0
square.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

// Finally the animation!
UIView.animate(
    withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
    options: .curveEaseOut, animations: {
        square.transform = .identity
        square.alpha = 1
}, completion: nil)

PlaygroundPage.current.liveView = containerView

/*-------------------------------------------------------------------------*/

/*
POP OUT
https://miro.medium.com/max/496/1*41IsEQk8aLkjgGEjIv18ig.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let square = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
square.center = containerView.center
square.layer.cornerRadius = 20.0
square.backgroundColor = UIColor.blue
containerView.addSubview(square)

// Finally the animation!
UIView.animate(
    withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
    options: .curveEaseOut, animations: {
        square.alpha = 0
        square.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
}, completion: nil)

PlaygroundPage.current.liveView = containerView

/*----------------------------------------------------------------------------------*/

/*
DROP FROM TOP
https://miro.medium.com/max/496/1*2yUMYISuuuy2HpRoxcOHng.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let squareBlue = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
squareBlue.center = containerView.center
squareBlue.layer.cornerRadius = 20.0
squareBlue.backgroundColor = UIColor.blue
containerView.addSubview(squareBlue)

// Finally the animation!
let offset = CGPoint(x: 0, y: -containerView.frame.maxY)
let x: CGFloat = 0, y: CGFloat = 0
squareBlue.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y + y)
squareBlue.isHidden = false
UIView.animate(
    withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3,
    options: .curveEaseOut, animations: {
        squareBlue.transform = .identity
        squareBlue.alpha = 1
})

PlaygroundPage.current.liveView = containerView

/*----------------------------------------------------------------------------------*/

/*
COMING FROM LEFT
https://miro.medium.com/max/496/1*MyBfXxmyBkxwNtT3uopccQ.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let squareBlue = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
squareBlue.center = containerView.center
squareBlue.layer.cornerRadius = 20.0
squareBlue.backgroundColor = UIColor.blue
containerView.addSubview(squareBlue)

// Finally the animation!
let offset = CGPoint(x: -containerView.frame.maxX, y: 0)
let x: CGFloat = 0, y: CGFloat = 0
squareBlue.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y + y)
squareBlue.isHidden = false
UIView.animate(
    withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3,
    options: .curveEaseOut, animations: {
        squareBlue.transform = .identity
        squareBlue.alpha = 1
})

PlaygroundPage.current.liveView = containerView

/*----------------------------------------------------------------------------------*/

/*
FADE IN
https://miro.medium.com/max/496/1*C6ZeBOR03PMDhS55t8H-6w.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let squareBlue = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
squareBlue.center = containerView.center
squareBlue.layer.cornerRadius = 20.0
squareBlue.backgroundColor = UIColor.blue
containerView.addSubview(squareBlue)

// Finally the animation!
squareBlue.alpha = 0.0
UIView.animate(withDuration: 0.5, delay: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
    squareBlue.alpha = 1
}, completion: nil)

PlaygroundPage.current.liveView = containerView

/*----------------------------------------------------------------------------------*/

/*
FADE OUT
https://miro.medium.com/max/496/1*KZuN-eC3k_XMoThMCr6-jg.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let squareBlue = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
squareBlue.center = containerView.center
squareBlue.layer.cornerRadius = 20.0
squareBlue.backgroundColor = UIColor.blue
containerView.addSubview(squareBlue)

// Finally the animation!
squareBlue.alpha = 1
UIView.animate(withDuration: 0.5, delay: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
    squareBlue.alpha = 0.0
}, completion: nil)

PlaygroundPage.current.liveView = containerView

/*----------------------------------------------------------------------------------*/

/*
CARD FLIP
https://miro.medium.com/max/496/1*lnCgy57LoFODvop9_sFbew.gif
*/

import UIKit
import PlaygroundSupport

// Create the container
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400))
containerView.backgroundColor = UIColor.white

// Create the square and add it to container
let squareBlue = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
squareBlue.center = containerView.center
squareBlue.layer.cornerRadius = 20.0
squareBlue.backgroundColor = UIColor.blue
containerView.addSubview(squareBlue)

// Finally the animation!
UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
    squareBlue.transform = CGAffineTransform(scaleX: -1, y: 1)
}, completion: nil)

PlaygroundPage.current.liveView = containerView
