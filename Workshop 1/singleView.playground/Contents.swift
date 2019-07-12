//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let background = UIColor(red:0.04, green:0.04, blue:0.03, alpha:1.0)
let lavaRed = UIColor(red:0.78, green:0.06, blue:0.18, alpha:1.0)
let mustard = UIColor(red:1.00, green:0.82, blue:0.32, alpha:1.0)
let navajo = UIColor(red:1.00, green:0.90, blue:0.63, alpha:1.0)

var turnX = true

// default view size: (375.0, 668.0)
/* 30 padding on sides, 60 padding top + bottom
    -> 315 / 3 == 105 per button
    ->
*/

class MyViewController : UIViewController {
    
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var button7: UIButton!
    var button8: UIButton!
    var button9: UIButton!
    
    var label: UILabel!
    var subtitle: UILabel!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = background

        label = UILabel()
        label.frame = CGRect(x: 187.5-60, y: 100, width: 200, height: 60)
        label.text = "Tic Tac Toe"
        label.font = UIFont(name: "Helvetica", size: 24)
        label.textColor = .white

        subtitle = UILabel()
        subtitle.frame = CGRect(x: 187.5-30, y: 140, width: 200, height: 60)
        subtitle.text = "X's turn"
        subtitle.font = UIFont(name: "Helvetica", size: 18)
        subtitle.textColor = .gray
        
        view.addSubview(label)

        view.addSubview(subtitle)
        
        // button grid
        button1 = UIButton()
        button2 = UIButton()
        button3 = UIButton()
        button4 = UIButton()
        button5 = UIButton()
        button6 = UIButton()
        button7 = UIButton()
        button8 = UIButton()
        button9 = UIButton()
        
        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        button6.tag = 6
        button7.tag = 7
        button8.tag = 8
        button9.tag = 9
        
        button1.setTitle("#", for: .normal)
        button2.setTitle("#", for: .normal)
        button3.setTitle("#", for: .normal)
        button4.setTitle("#", for: .normal)
        button5.setTitle("#", for: .normal)
        button6.setTitle("#", for: .normal)
        button7.setTitle("#", for: .normal)
        button8.setTitle("#", for: .normal)
        button9.setTitle("#", for: .normal)
        
        button1.setTitleColor(mustard, for: .normal)
        button2.setTitleColor(mustard, for: .normal)
        button3.setTitleColor(mustard, for: .normal)
        button4.setTitleColor(mustard, for: .normal)
        button5.setTitleColor(mustard, for: .normal)
        button6.setTitleColor(mustard, for: .normal)
        button7.setTitleColor(mustard, for: .normal)
        button8.setTitleColor(mustard, for: .normal)
        button9.setTitleColor(mustard, for: .normal)
        
        button1.setTitleColor(navajo, for: .highlighted)
        button2.setTitleColor(navajo, for: .highlighted)
        button3.setTitleColor(navajo, for: .highlighted)
        button4.setTitleColor(navajo, for: .highlighted)
        button5.setTitleColor(navajo, for: .highlighted)
        button6.setTitleColor(navajo, for: .highlighted)
        button7.setTitleColor(navajo, for: .highlighted)
        button8.setTitleColor(navajo, for: .highlighted)
        button9.setTitleColor(navajo, for: .highlighted)
        
        button1.frame = CGRect(x: 62.5,  y: 300, width: 40, height: 40)
        button2.frame = CGRect(x: 167.5, y: 300, width: 40, height: 40)
        button3.frame = CGRect(x: 272.5, y: 300, width: 40, height: 40)
        button4.frame = CGRect(x: 62.5,  y: 405, width: 40, height: 40)
        button5.frame = CGRect(x: 167.5, y: 405, width: 40, height: 40)
        button6.frame = CGRect(x: 272.5, y: 405, width: 40, height: 40)
        button7.frame = CGRect(x: 62.5,  y: 510, width: 40, height: 40)
        button8.frame = CGRect(x: 167.5, y: 510, width: 40, height: 40)
        button9.frame = CGRect(x: 272.5, y: 510, width: 40, height: 40)

        button1.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button2.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button3.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button4.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button5.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button6.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button7.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button8.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        button9.addTarget(
            self, action: #selector(buttonPressed), for: .touchUpInside
        )
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
        
        self.view = view
        
    }
    @objc func buttonPressed(sender: UIButton!) {
        let symbol = turnX ? "X" : "O"
        let nextSymbol = !turnX ? "X" : "O"
        
        sender.setTitle(symbol, for: .normal)
        turnX = !turnX
        
        // check for winner
        if winner() {
            subtitle.text = "\(symbol) wins!"
            return
        }
        
        subtitle.text = "\(nextSymbol)'s turn"
        
        print("updating view, sender is \(sender.tag)")
    }
    
    @objc func winner() -> Bool {
        return false
    }
}

// Present the view controller in the Live View window

PlaygroundPage.current.liveView = MyViewController()
