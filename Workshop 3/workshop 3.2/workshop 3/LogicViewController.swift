//
//  GameLogicViewController
//  workshop 3
//
//  Created by Federico Naranjo on 2019-07-29.
//  Copyright © 2019 Federico Naranjo. All rights reserved.
//

import UIKit

class GameLogicViewController: UIViewController {

    var board: [Int]! = [0,0,0, 0,0,0, 0,0,0]
    var turnCount: Int!
    var xTurn: Bool!
    
    @IBOutlet weak var turnLabel: UILabel!

    @IBOutlet weak var buttonA1: UIButton!
    @IBOutlet weak var buttonA2: UIButton!
    @IBOutlet weak var buttonA3: UIButton!
    @IBOutlet weak var buttonB1: UIButton!
    @IBOutlet weak var buttonB2: UIButton!
    @IBOutlet weak var buttonB3: UIButton!
    @IBOutlet weak var buttonC1: UIButton!
    @IBOutlet weak var buttonC2: UIButton!
    @IBOutlet weak var buttonC3: UIButton!
    
    /**
     Function triggered when a game button is pressed.
     */
    @IBAction func playTurn(_ sender: UIButton) {
        print("\n# button pressed with ID: \(sender.tag)\n")

        // update board data structure
        updateBoard(button: sender.tag)

        // update button image
        updateButton(button: sender)

        // exit game if winner found or draw game
        if winner() {
            turnLabel.text = xTurn ? "X Wins!" : "O Wins!"

            performSegue(withIdentifier: "endGame", sender: nil)
            return
        } else if turnCount == 9 {
            turnLabel.text = "Draw..."

            performSegue(withIdentifier: "endGame", sender: nil)
            return
        }

        xTurn = !xTurn
        turnCount += 1

        turnLabel.text = xTurn ? "X Player's Turn" : "O Player's Turn"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("\n# game view loaded\n")

        setUpBoard()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let vc = segue.destination as? GameOverViewController
        {
            if turnCount != 9 {
                vc.winner = xTurn ? "X Player Wins!" : "O Player Wins!"
                
            } else {
                vc.winner = "No winner..."
            }
        }
    }

    /**
     Gets everything ready for the board to start a new game.
     */
    func setUpBoard() {
        board = [0,0,0, 0,0,0, 0,0,0]
        turnCount = 1
        xTurn = true

        buttonA1.tag = 1
        buttonA2.tag = 2
        buttonA3.tag = 3
        buttonB1.tag = 4
        buttonB2.tag = 5
        buttonB3.tag = 6
        buttonC1.tag = 7
        buttonC2.tag = 8
        buttonC3.tag = 9
    }
    
    /**
     Updates the board data structure.
     */
    func updateBoard(button: Int) {
        board[button-1] = xTurn ? 1 : -1
    }
    
    /**
     Updates the button that was pressed and disables it.
     */
    func updateButton(button: UIButton) {
        let image = xTurn ? UIImage(named: "Icon-X") : UIImage(named: "Icon-O")

        button.setImage(image, for: .disabled)
        button.isEnabled = false
    }
    
    /**
     Checks if a winning move was played. True if the current player won.
     - returns: True if a winning combination is detected.
     */
    func winner() -> Bool {
        if board[0] == board[1]
            && board[0] == board[2]
            && board[0] != 0 {
            // row 1 //
            return true
        } else if board[3] == board[4]
            && board[3] == board[5]
            && board[3] != 0 {
            // row 2 //
            return true
        } else if board[6] == board[7]
            && board[6] == board[8]
            && board[6] != 0 {
            // row 3 //
            return true
        } else if board[0] == board[3]
            && board[0] == board[6]
            && board[0] != 0 {
            // col 1 //
            return true
        } else if board[1] == board[4]
            && board[1] == board[7]
            && board[1] != 0 {
            // col 2 //
            return true
        } else if board[2] == board[5]
            && board[2] == board[8]
            && board[2] != 0 {
            // col 1 //
            return true
        } else if board[0] == board[4]
            && board[0] == board[8]
            && board[0] != 0 {
            // diagonal 1 //
            return true
        } else if board[2] == board[4]
            && board[2] == board[6]
            && board[2] != 0 {
            // diagonal 2 //
            return true
        }
        return false
    }
}
