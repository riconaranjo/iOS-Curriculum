//: [Functions](@previous)
/*:
 
 # 1.2 Playing around with Swift
 
 // todo: finish this, something cool that you can make in playgrounds
 
 */

import UIKit
import XCPlayground

var str = "Hello, playground"

let color = UIColor (red: 1 , green: 1 , blue: 0 , alpha: 0 )

let view = UIView()
view.backgroundColor = UIColor (red: 1 , green: 0 , blue: 0 , alpha: 0 )

view.frame = CGRect (x: 0 ,y: 0 ,width: 100 ,height: 100 )

let label = UILabel (frame: CGRect (x: 5 , y: 5 , width: 50 , height: 20 ))

label.text = str

view.addSubview(label)

//: [Additional Topics](@next)
