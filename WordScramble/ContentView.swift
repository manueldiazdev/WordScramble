//
//  ContentView.swift
//  WordScramble
//
//  Created by Manuel Diaz on 5/5/21.
//

import SwiftUI

struct ContentView: View {
//  Lesson 2
//    let people = ["t", "h", "c"]
    
    
    
    
    
    var body: some View {
/** locating files within our app bundle by using urls (Strings) [3]*/
//        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
//            //found file in our bundle
//
//            if let fileContents = try? String(contentsOf: fileURL){
//
//            }
//        }
/** Making a dynamic list using arrays and learning the syntax of it.[2] */
//        List{
//            ForEach(people, id: \.self){
//                Text($0)
//            }
//        }
//        .listStyle(GroupedListStyle())
//
/** working with strings by checking spelling, chopping off spaces, and more using api to use objective c methods [4] */
//        let input = """
//                    a
//                    b
//                    c
//                    """
//        let letters = input.components(separatedBy: "\n")
//        //.randomElement() -> String?
//        let letter = letters.randomElement()
//        let trimmed  = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
//
//
//
//        Text(trimmed!)
//
/** [4.2]*/
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let mispelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        //Special value in Objective C
        let allGood = misspelledRange.location == NSNotFound
        
        Text("Default")
    }
    
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
