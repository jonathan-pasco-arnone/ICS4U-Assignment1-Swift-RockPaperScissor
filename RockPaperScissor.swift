//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-12-02
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  This program calculates the amount of time to reheat a
//  specific quantity of a specific type of food.

import Foundation

// Constants (swiftlint does not like capitalized or underlines in variables).
let errorText: String = "error"

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func rockPaperScissorGame() -> String {
    // Variables/Constants.
    let returnValue: String
    let computerChoice: String
    let rock: String = "rock"
    let paper: String = "paper"
    let scissors: String = "scissors"
    let computerChoiceText: String = "The computer chose "

    print("\nPlease make your choice "
                    + "(rock, paper, or scissors): ")

    // Inputs.
    let choice: String = readLine()!

    // Random Number from 1 - 3.
    let randomNumber: Int = Int.random(in: 1..<3+1)

    if randomNumber == 1 {
        computerChoice = rock
    } else if randomNumber == 2 {
        computerChoice = paper
    } else {
        computerChoice = scissors
    }

    if choice == computerChoice {
        print(computerChoiceText, computerChoice)
        print("You Tied. Chose again\n\n\n")
        returnValue = rockPaperScissorGame()
    } else if choice == paper && computerChoice == rock
                    || choice == scissors && computerChoice == paper
                    || choice == rock && computerChoice == scissors {
        print(computerChoiceText + computerChoice)
        returnValue = "win"
    } else if !(choice == rock || choice == paper || choice == scissors) {
        returnValue = errorText
    } else {
        print(computerChoiceText + computerChoice)
        returnValue = "lose"
    }

    return returnValue

}

// Inputs
print("This is the rock, paper, scissors game.")

let result: String = rockPaperScissorGame()

if result == errorText {
    print("Invalid Input")
} else {
    // Output.
    // Will either be "You win" or "You lose."
    print("You ", result)
}

print("\nDone.")
