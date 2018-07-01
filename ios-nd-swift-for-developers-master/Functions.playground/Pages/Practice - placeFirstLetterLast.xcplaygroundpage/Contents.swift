//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!
func placeFirstLetterLast(of word: String) -> String {
    var word = word
    let firstLetterPosition = word.startIndex
    word.append(word[firstLetterPosition])
    word.remove(at: firstLetterPosition)
    return word
}

placeFirstLetterLast(of: "ate")

//: [Next](@next)
