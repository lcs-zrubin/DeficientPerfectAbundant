//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//
//
import Foundation

// INPUT

//Create a global variable that will store the valid input
var validInput = 0

// Loop forever until valid input is found
while 1 == 1 {
    
    // *
    // Test #1: Wait for input AND at the ame time, ensure input is not nil
    guard let givenInput = readLine() else {
        
        //If we got inside this structure, we have nil input
        //So, we should not do any more tests
        //Just prompt again
        continue
    }
    
    //Test #2: Is it an integer?
    guard let givenInteger = Int(givenInput) else {
        
        //If we got here, inside the structure, we have input that
        //cannot be made into an integer (e.g.: "nintey-five" or "LOL")
        
        continue
        
    }
    
    //Test #3: Is the integer in the correct range
    //      Less than 1
    //      OR
    //      mORE THAN 32500
    if givenInteger < 1 || givenInteger > 32500 {
        
        //If we got here, number is NOT in the correct range
        continue //go to top of while loop
    }
    
    // If we got here, all 3 tests passed, we know we have valid input
    validInput = givenInteger
    break // INPORTANT: gets is out of the infinite loop
    
} //End of while loop


// Process
print(validInput)


var sumOfFactors = 0

//Find all the factors
for i in 1...validInput-1 {

        if validInput % i == 0 {
            sumOfFactors += i
        }

}

if validInput < sumOfFactors {
    print("\(validInput) is an abundant number")
} else if validInput > sumOfFactors {
     print("\(validInput) is an deficient number")
} else if validInput == sumOfFactors {
    print("\(validInput) is a perfect number")
}



