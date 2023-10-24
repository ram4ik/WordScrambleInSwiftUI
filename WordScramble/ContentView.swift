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
}

#Preview {
    ContentView()
}
