//
//  ContentView.swift
//  WordScramble
//
//  Created by admin on 10/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section {
                ForEach(0..<5) {
                    Text("Dynamic Row \($0)")
                }
            }
            
            Section {
                ForEach(6..<9) {
                    Text("Dynamic Row \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
