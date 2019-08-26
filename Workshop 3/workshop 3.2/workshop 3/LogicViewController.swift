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
    
    @IBOutlet weak var buttonA1: UIButton!
    @IBOutlet weak var buttonA2: UIButton!
    @IBOutlet weak var buttonA3: UIButton!
    @IBOutlet weak var buttonB1: UIButton!
    @IBOutlet weak var buttonB2: UIButton!
    @IBOutlet weak var buttonB3: UIButton!
    @IBOutlet weak var buttonC1: UIButton!
    @IBOutlet weak var buttonC2: UIButton!
    @IBOutlet weak var buttonC3: UIButton!
    
    
    @IBAction func playTurn(_ sender: UIButton) {
        print("\n# button pressed with ID: \(sender.tag)\n")

        updateBoard(button: sender.tag)
        updateButton(button: sender.tag)
        
        if winner() || turnCount == 9 {
            performSegue(withIdentifier: "endGame", sender: nil)
        }
        
        xTurn = !xTurn
        turnCount += 1
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
                vc.winner = xTurn ? "X" : "O"
            } else {
                vc.winner = "Draw"
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
    
    func updateBoard(button: Int) {
        board[button-1] = xTurn ? 1 : -1
    }
    
    func updateButton(button: Int) {
        let image = xTurn ? UIImage(named: "Icon-X") : UIImage(named: "Icon-O")

        switch button {
        case 1:
            buttonA1.setImage(image, for: .normal)
        case 2:
            buttonA2.setImage(image, for: .normal)
        case 3:
            buttonA3.setImage(image, for: .normal)
        case 4:
            buttonB1.setImage(image, for: .normal)
        case 5:
            buttonB2.setImage(image, for: .normal)
        case 6:
            buttonB3.setImage(image, for: .normal)
        case 7:
            buttonC1.setImage(image, for: .normal)
        case 8:
            buttonC2.setImage(image, for: .normal)
        case 9:
            buttonC3.setImage(image, for: .normal)
        default:
            print("invalid button tag ID (must be in range 1..9)")
        }
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
//            buttonA1.setTitleColor(lavaRed, for: .normal)
//            buttonA2.setTitleColor(lavaRed, for: .normal)
//            buttonA3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[3] == board[4]
            && board[3] == board[5]
            && board[3] != 0 {
            // row 2 //
//            buttonB1.setTitleColor(lavaRed, for: .normal)
//            buttonB2.setTitleColor(lavaRed, for: .normal)
//            buttonB3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[6] == board[7]
            && board[6] == board[8]
            && board[6] != 0 {
            // row 3 //
//            buttonC1.setTitleColor(lavaRed, for: .normal)
//            buttonC2.setTitleColor(lavaRed, for: .normal)
//            buttonC3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[3]
            && board[0] == board[6]
            && board[0] != 0 {
            // col 1 //
//            buttonA1.setTitleColor(lavaRed, for: .normal)
//            buttonB1.setTitleColor(lavaRed, for: .normal)
//            buttonC1.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[1] == board[4]
            && board[1] == board[7]
            && board[1] != 0 {
            // col 2 //
//            buttonA2.setTitleColor(lavaRed, for: .normal)
//            buttonB2.setTitleColor(lavaRed, for: .normal)
//            buttonC2.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[5]
            && board[2] == board[8]
            && board[2] != 0 {
            // col 1 //
//            buttonA3.setTitleColor(lavaRed, for: .normal)
//            buttonB3.setTitleColor(lavaRed, for: .normal)
//            buttonC3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[0] == board[4]
            && board[0] == board[8]
            && board[0] != 0 {
            // diagonal 1 //
//            buttonA1.setTitleColor(lavaRed, for: .normal)
//            buttonB2.setTitleColor(lavaRed, for: .normal)
//            buttonC3.setTitleColor(lavaRed, for: .normal)
            return true
        } else if board[2] == board[4]
            && board[2] == board[6]
            && board[2] != 0 {
            // diagonal 2 //
//            buttonA3.setTitleColor(lavaRed, for: .normal)
//            buttonB2.setTitleColor(lavaRed, for: .normal)
//            buttonC1.setTitleColor(lavaRed, for: .normal)
            return true
        }
        return false
    }


}

