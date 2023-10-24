//
//  ContentView.swift
//  WordScramble
//
//  Created by admin on 10/24/23.
//

import SwiftUI

struct ContentView: View {
    
    let people = ["Jonh", "Mark", "Joe"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
    
    func testBundles() {
        if let fileUrl = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileUrl) {
                
            }
        }
    }
    
    func testStrings() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
    }
    
    func testStringsOther() {
        let input = """
        a 
        b
        c
        """
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func checkMissSpell() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
