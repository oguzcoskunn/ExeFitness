//
//  ContentView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 16.04.2022.
//

import SwiftUI

struct ContentView: View {
    var dateComponents = DateComponents()
    
    init() {
        self.dateComponents.year = 2016
        self.dateComponents.month = 11
        self.dateComponents.day = 04
        self.dateComponents.hour = 13
        self.dateComponents.minute = 8
        self.dateComponents.second = 0
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Group {
                    Divider()
                    NavigationLink {
                        IntermediateView()
                    } label: {
                        Text("Intermediate")
                    }
                    Divider()
                    NavigationLink {
                        AdvancedView()
                    } label: {
                        Text("Advanced")
                    }
                    Divider()
                }
                
                Spacer()
                
                Group {
                    Divider()
                    let fmt = ISO8601DateFormatter()
                    let myStartDate = fmt.date(from: "2022-01-10T00:00:00+0000")!
                    let now = Date.now
                    HStack(spacing: 2) {
                        Text("Spora başlayalı")
                        PassedTimeView(from: myStartDate, to: now)
                            .foregroundColor(.green)
                        Text(" oldu!")
                    }.font(.system(size: 15, weight: .bold))
                }
                
                Group {
                    Divider()
                    let fmt = ISO8601DateFormatter()
                    let myFinishDate = fmt.date(from: "2022-06-29T00:00:00+0000")!
                    let now = Date.now
                    HStack(spacing: 2) {
                        Text("Üyeliğin bitmesine")
                        PassedTimeView(from: now, to: myFinishDate)
                            .foregroundColor(.blue)
                        Text(" kaldı!")
                    }.font(.system(size: 15, weight: .bold))
                    Divider()
                }
 
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Exe Fitness")
            .font(.system(size: 45, weight: .bold))
            .foregroundColor(.red)
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
