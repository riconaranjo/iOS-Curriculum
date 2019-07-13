//: [Functions](@previous)
import UIKit
/*:
 
 # 1.2 Playing around with Swift
 
 Now that we have a firm basic understanding of how to write Swift code, let's use it to build soomething cool.
 
 What's a cooler thing to make than a revolutionary app with over a million downloads within it's first week?
 
 Your first tic tac toe app in playgrounds, that's what!
 
 ## Tic Tac Toe
 
 I've already built a skeleton for this tic tac toe app to help you get started, including the labels and buttons. We're just going to add a few functions to finish up the game.
 
 1. Add a function that is triggered when you play a move.
 2. Add a function that checks if a winning move has been played.
 3. Add a function that updates the game board
 
 The function definitions are shown below. We will implement in the next page.
 
 */
/**
 Action triggered when any game board button is pressed
 - parameter sender: A reference to the button that was pressed
 */
func buttonPressed(sender: UIButton!) {}
/**
 Checks game board and checks if any winning moves were made.
 - returns: True if a winning move was found in `board`
 */
func winner() -> Bool { return false }
/**
 Updates `board` with the last move
 - parameter button: button ID for button pressed (1...9)
 */
func updateBoard(button: Int) {}
//: [Tic Tac Toe Playground](@next)
