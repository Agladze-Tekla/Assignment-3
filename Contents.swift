import UIKit

print("Problem 1")
print(factorial(num1: 5))
print("Problem 2")
fibonacci(amount: 20)
print("Problem 3")
print(palindrome(word: "racecar"))
print("Problem 4")
square(numbers: [1, 0, 4, 5, 3, 2, 6, 7, 7])
print("Problem 5")
//wordCount(sentence: "TBC x USAID, tbc it academy, we are in TBC academy")
print("Problem 6")





func square(numbers: Array<Int>) -> Array<Int> {
    var square = numbers
    for i in 0..<square.count {
        square[i] *= square[i]
    }
    print(numbers)
    print(square)
    return square
}


func palindrome(word: String) -> Bool {
    let reverse = String(word.reversed()) //We already wrote the reverse code, so i just used the method.
    if word == reverse {
        return true
    } else {
        return false
    }
}


func factorial(num1: Int) -> Int {
    var fact: Int = 1
    for i in 1...num1 {
        fact *= i
    }
    return fact
}

func fibonacci(amount: Int) {
    var first: Int = 0
    var second: Int = 1
    var temp: Int = 0
    print(first)
    print(second)
    for _ in 1...amount - 2 {
        temp = first + second
        first = second
        second = temp
        print(second)
    }
}

