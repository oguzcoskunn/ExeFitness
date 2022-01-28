//
//  ContentView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 28.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    DetailView(details: Day1)
                } label: {
                    Text("Day 1")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
