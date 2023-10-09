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
print(wordCount(sentence: "TBC x USAID, tbc it academy, we are in TBC academy"))
//7

//6
print("Problem 6")
var binary = { (a: Int) -> String in return String(a, radix: 2) }
print(binary(65))
//5
func wordCount(sentence: String) -> Dictionary<String, Int> {
    let sent = sentence.lowercased()
    var words: [String: Int] = [:]
    let word = sent.split(separator: " ") //Did not get rid of ",", academy and academy, are different.
    print(word)
    var wordSet: Set<String> = []
    for i in 0..<word.count {
        wordSet.insert(String(word[i]))
    }
    print(wordSet)
    for element in wordSet {
        var count = 0
        for i in 0..<word.count {
            if element == word[i]{
                count += 1
            }
        }
        words[element] = count
    }
    return words
}
//4
func square(numbers: Array<Int>) -> Array<Int> {
    var square = numbers
    for i in 0..<square.count {
        square[i] *= square[i]
    }
    print(numbers)
    print(square)
    return square
}
//3
func palindrome(word: String) -> Bool {
    var reversedString : String = ""
    for letter in word {
        reversedString = String(letter) + reversedString
    }
    if reversedString == word {
        return true
    } else {
        return false
    }
}
//1
func factorial(num1: Int) -> Int {
    var fact: Int = 1
    for i in 1...num1 {
        fact *= i
    }
    return fact
}
//2
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

