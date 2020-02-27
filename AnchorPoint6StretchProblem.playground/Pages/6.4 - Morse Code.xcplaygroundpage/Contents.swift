//: [Previous](@previous)
/*:
 # Thursday Stretch Problem 6.4
 ## Morse Code
 
 ### Instructions:
 Write a function called morse that takes a string and returns a string in morse code.
 */

import Foundation

var str = "Hello, playground"


    let morseAlphabet = ["A": ".-", "B": "-...", "C": "-.-.", "D": "-..", "E": ".", "F": "..-.",
                         "G": "--.", "H": "....", "I": "..", "J": ".---", "K": "-.-", "L": ".-..",
                         "M": "--", "N": "-.", "O": "---", "P": ".--.", "Q": "--.-", "R": ".-.",
                         "S": "...", "T": "-", "U": "..-", "V": "...-", "W": ".--", "X": "-..-",
                         "Y": "-.--", "Z": "--..", "1": ".----", "2": "..---", "3": "...--",
                         "4": "....-", "5": ".....", "6": "-....", "7": "--...", "8": "---..",
                         "9": "----.", "0": "-----"]
    
    
     func encodeAString(input: String) -> Void {
        let result = NSMutableString()
        for i in input.indices[input.startIndex..<input.endIndex] {
            if let morseCode = morseAlphabet[String(input[i])] {
                result.append(morseCode)
                result.append(" ")
            }
        }
        print(result)
    }
        
        
        func morseChar(forMorseCode val: String) -> [String] {
            return morseAlphabet.filter { $1 == val }.map { $0.0 }
        }
        
encodeAString(input: "hi im nick")






