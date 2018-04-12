//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation



// Get the user input
var rawInput = readLine()
var sumOfFactors = 0
var i = 0

//Step #1 of unwrap
guard let givenInput = rawInput else {
        //error
        print("Please input a number")
        exit(9)
}

//Step #2 of unwrap
guard let input = Int(givenInput) else{
    exit(9)
}

//Find all the factors
for i in 1...input-1 {
    
        if input % i == 0 {
            sumOfFactors += i
        }
    
}

if input < sumOfFactors {
    print("\(input) is an abundant number")
} else if input > sumOfFactors {
     print("\(input) is an deficient number")
} else if input == sumOfFactors {
    print("\(input) is a perfect number")
}


