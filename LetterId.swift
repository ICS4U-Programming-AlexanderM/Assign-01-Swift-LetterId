//  Created by Alexander Matheson
//  Created on 2023-Mar-01
//  Version 1.0
//  Copyright (c) 2023 Alexander Matheson. All rights reserved.
//
//  This program determines if a letter is a vowel or consonant.
import Foundation

// Array of all English letters in a specific order.
// Y is first, followed by all other vowels.
// The rest are consonants.
let letters: [Character] = ["y", "a", "e", "i", "o", "u", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
// Declare variables.
var counter = 0
var userLetter: Character = "a"
var strData = ""

// Get input from user.
print("Enter a letter: ")
strData = readLine()!
// Prevent a crash when an empty line is entered.
if strData.isEmpty {
  print("No input provided.")
} else {
  // Check length of entered string.
  if strData.count > 1 {
    print("Please enter a single letter.")
  } else {
    // Convert to single character
    userLetter = strData.lowercased().first!
    // Loop to check each letter in array
    // If array reaches end and no valid letter has been found, input was invalid.
    while letters[counter] != userLetter && counter < 25 {
      counter += 1
    }
    // Determine and display letter's id.
    if counter == 0 {
      print(String(userLetter).uppercased(), "is both a consonant and a vowel.")
    } else if counter < 6 {
      print(String(userLetter).uppercased(), "is a vowel.")
    } else if counter < 25 {
      print(String(userLetter).uppercased(), "is a consonant.")
    } else {
      // For when the end of the array is reached without a match.
      // Error checker replacement (Couldn't get regular error checker to work with char variable type).
      print("Invalid input.")
    }
  }
}
