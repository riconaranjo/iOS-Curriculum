//: [Previous](@previous)

/*:
 
 # Tic Tac Toe Playground
 
 A simple tic tac toe game implemented in Swift Playgrounds.
 
 */
/*:
 
 ---
 
 ## Import Statements
 
 This bit of code imports tools so we can create our tic tac toe game in Swift Playgrounds.
 - [UIKit](https://developer.apple.com/documentation/uikit) is the UI framework for iOS applications.
 - [Playground Support](https://developer.apple.com/documentation/playgroundsupport) allows us to display and interact with live views in playgrounds.
 
 */
import UIKit
import PlaygroundSupport
/*:
 
 ---
 
 ## Global Constants
 
 These are values that are _globally_ accessible, that means you can use them anywhere in your program. Usually you want to avoid using these since it can create unforeseen problems in a large project and can be quite difficult to debug.
 
 We are using them here since we're just starting out and our program is small.
 
 */
let background = UIColor(red:0.04, green:0.04, blue:0.03, alpha:1.0)
let lavaRed    = UIColor(red:0.78, green:0.06, blue:0.18, alpha:1.0)
let mustard    = UIColor(red:1.00, green:0.82, blue:0.32, alpha:1.0)
let navajo     = UIColor(red:1.00, green:0.90, blue:0.63, alpha:1.0)
/*:
 ## View Controller
 
 View controllers are a super important concept in iOS development as every single app has at least one view controller, and often more than one. They manage your user interface and it's interactions with the underlying data.
 
 Each view controller manages a top level view which contains smaller subviews / UI element, but it does not necessary manage the subviews — _here in our simple example, it does_.
 
 Read more about view controllers in Apple's [programming guide](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/)
 
 */
class MyViewController : UIViewController {

/*:
 
 ---
 
 ## Class Properties
 
 Class properties are values that are associated wth a class. Just like a car has four wheels (each wheel is a property of a car), our tic tac toe game has 9 buttons (one for each position on the board). Our game view also has two text labels: a title and a subtitle. The title will just simply say the name of the game, and the subtitle will give current player's turn or the winner.
 
 */
    /*
     Board values
     - initial state value: 0
     - player x state value: 1
     - player o state value: -1
     */
    var board = [0,0,0, 0,0,0, 0,0,0]
    var turnCount = 0
    var turnX = true

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
    
/*:
 
 ---
 
 ## Loading the View
 
 This function is what actually loads all of our labels and buttons into the playground live view. Here we create our `UIView` and we change its background colour. We setup the labels and buttons, adding them to the view, and then we give the view to the view controller.
 
 `setupLabel(with: view)` and `setupButtons(with: view)` were created to make this a bit easier; they put all the buttons and labels in the right place and setting them to their initial values, they are defined below in this class.
 
 */
    override func loadView() {
        let view = UIView()     // default view size: (375.0, 668.0)
        view.backgroundColor = background
        
        setupLabels(with: view)
        setupButtons(with: view)
        
        self.view = view
    }

    /**
     Creates and adds title and subtitle labels to the view passed.
     - parameter view: View created in `loadView()`
     */
    @objc func setupLabels(with view: UIView) {
        // label (title) //
        label = UILabel()
        label.frame = CGRect(x: 187.5-60, y: 100, width: 200, height: 60)
        label.text = "Tic Tac Toe"
        label.font = UIFont(name: "Helvetica", size: 24)
        label.textColor = .white
        
        // subtitle //
        subtitle = UILabel()
        subtitle.frame = CGRect(x: 187.5-30, y: 140, width: 200, height: 60)
        subtitle.text = "X's turn"
        subtitle.font = UIFont(name: "Helvetica", size: 18)
        subtitle.textColor = .gray
        
        view.addSubview(label)
        view.addSubview(subtitle)
    }
    
    /**
     Creates and adds all 9 buttons for tic tac toe game board.
     - parameter view: View created in `loadView()`
     */
    @objc func setupButtons(with view: UIView) {
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
    }
    
/*:
 
 ---
 
 ## Button Pressed
 
 When a button is pressed we want to do a few different things:
 
 1. We want to update that button with that player's move
     - but only if that button hasn't already been pressed
 2. We want to check if that move was a winning move
     - and if so we want to stop the game
 3. We want to show that it's the next player's turn
 
 */
    /**
     Action triggered when any game board button is pressed
     - parameter sender: A reference to the button that was pressed
     */
    @objc func buttonPressed(sender: UIButton!) {
        // quit if game is over or button has already been pressed
        if winner() || board[sender.tag-1] != 0 {
            return
        }
        
        let symbol = turnX ? "X" : "O"
        let nextSymbol = !turnX ? "X" : "O"
        
        // update button with player symbol
        sender.setTitle(symbol, for: .normal)
        turnX = !turnX
        turnCount += 1
        
        // update board struct with new move
        updateBoard(button: sender.tag)
        
        // check for winner
        if winner() {
            subtitle.text = "\(symbol) wins!"
            return
        }
        
        // check for draw since no winner was found
        if turnCount == 9 {
            subtitle.text = "Draw!"
            return
        }
        
        // update subtitle to say who's turn it is
        subtitle.text = "\(nextSymbol)'s turn"
    }
/*:
 
 ---
 
 ## Winning Combinations
 
 There are 8 possible winning combinations for any particular player. We can check for these if there are three game positions with the same value in a line. We can describe these winning combinations by comparing the values as shown below. (rows: a, b, c | col: 1, 2, 3)
 
 The player could get all three in a row:
 
 1. a1 == a2 == a3
 2. b1 == b2 == b3
 3. c1 == c2 == c3
 
 The player could get all three in a column:
 
 4. a1 == b1 == c1
 5. a2 == b2 == c2
 6. a3 == b3 == c3
 
 Or the player could get one of the diagonals:
 
 7. a1 == b2 == c3
 8. a3 == b2 == c1
 
 ___
 
 ## Winner
 
 Let's make this function check for each of these 8 cases, and if we find a winning combination we return true, but false if we don't find any.
 
 Once we get that working, let's make it change the colour of the winning positions red as well so we can show the players exactly what the winning moves were.
     
 _hint: conditional statements_
 
 */
    /**
     Checks game board and checks if any winning moves were made.
     - returns: True if a winning move was found in `board`
     */
    @objc func winner() -> Bool {
        if board[0] == board[1]
            && board[0] == board[2]
            && board[0] != 0 {
            // row 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button2.setTitleColor(lavaRed, for: .normal)
            button3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[3] == board[4]
            && board[3] == board[5]
            && board[3] != 0 {
            // row 2 //
            button4.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button6.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[6] == board[7]
            && board[6] == board[8]
            && board[6] != 0 {
            // row 3 //
            button7.setTitleColor(lavaRed, for: .normal)
            button8.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[3]
            && board[0] == board[6]
            && board[0] != 0 {
            // col 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button4.setTitleColor(lavaRed, for: .normal)
            button7.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[1] == board[4]
            && board[1] == board[7]
            && board[1] != 0 {
            // col 2 //
            button2.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button8.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[5]
            && board[2] == board[8]
            && board[2] != 0 {
            // col 1 //
            button3.setTitleColor(lavaRed, for: .normal)
            button6.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[4]
            && board[0] == board[8]
            && board[0] != 0 {
            // diagonal 1 //
            button1.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button9.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[4]
            && board[2] == board[6]
            && board[2] != 0 {
            // diagonal 2 //
            button3.setTitleColor(lavaRed, for: .normal)
            button5.setTitleColor(lavaRed, for: .normal)
            button7.setTitleColor(lavaRed, for: .normal)
            return true
        }
        return false
    }
    
/*:
 
 ---
 
 ## Updating Board
 
 We want to update our integer array which stores the states of each button so we don't have to go through each button every time we check for a winner. How can we update the `board` values using only the button ID?
     
 _hint: ternary operator_
 
 */
    /**
     Updates `board` with the last move
     - parameter button: button ID for button pressed (1...9)
     */
    @objc func updateBoard(button: Int) {
        board[button-1] = turnX ? 1 : -1
    }
}

/*:
 
 This line loads and shows the view in playgrounds.
 
 */
PlaygroundPage.current.liveView = MyViewController()
//: [Next](@next)
