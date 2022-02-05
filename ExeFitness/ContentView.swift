//
//  ContentView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 28.01.2022.
//

import SwiftUI

struct ContentView: View {
    var Day1 = [ProgramContent]()
    var Day2 = [ProgramContent]()
    var Day3 = [ProgramContent]()
    var Day4 = [ProgramContent]()
    var dateComponents = DateComponents()

    
    init() {
        // Day 1
        self.Day1.append(Isinma1)
        self.Day1.append(BenchPress)
        self.Day1.append(InclineMachinePress)
        self.Day1.append(DumbellPullover)
        self.Day1.append(DumbellFly)
        self.Day1.append(TricepPushdown)
        self.Day1.append(OverheadDumbellExtention)
        self.Day1.append(BenchDips)
        
        // Day 2
        self.Day2.append(Isinma2)
        self.Day2.append(SeatedCableLatPulldown)
        self.Day2.append(ReverseGripPulldown)
        self.Day2.append(SeatedCableRow)
        self.Day2.append(DumbellRow)
        self.Day2.append(DumbellCurl)
        self.Day2.append(HummberCurl)
        self.Day2.append(ConcentrationCurl)
        
        // Day 3
        self.Day3.append(Isinma3)
        self.Day3.append(DumbellShoulderPress)
        self.Day3.append(DumbellFrontRaise)
        self.Day3.append(DumbellSideLateralRaise)
        self.Day3.append(BarbellUprightRow)
        self.Day3.append(LegPress)
        self.Day3.append(LegExtention)
        self.Day3.append(LegCurl)
        self.Day3.append(BarbellCalfRaises)
        
        // Day 4
        self.Day4.append(ReverseCrunch)
        self.Day4.append(ToeTouches)
        self.Day4.append(Plank)
        
        
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
                        DayDetailView(details: Day1)
                            .navigationTitle("Day 1")
                    } label: {
                        Text("Day 1")
                    }
                    Divider()
                    NavigationLink {
                        DayDetailView(details: Day2)
                            .navigationTitle("Day 2")
                    } label: {
                        Text("Day 2")
                    }
                    Divider()
                    NavigationLink {
                        DayDetailView(details: Day3)
                            .navigationTitle("Day 3")
                    } label: {
                        Text("Day 3")
                    }
                    Divider()
                    NavigationLink {
                        DayDetailView(details: Day4)
                            .navigationTitle("Day 4")
                    } label: {
                        Text("Day 4")
                    }
                    Divider()
                }
                
                Spacer()
                
                Group {
                    Divider()
                    let fmt = ISO8601DateFormatter()
                    let myStartDate = fmt.date(from: "2022-01-10T10:00:46+0000")!
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
                    let myFinishDate = fmt.date(from: "2022-03-29T10:00:46+0000")!
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
            .font(.system(size: 45, weight: .bold))
            .foregroundColor(.red)
            .padding(.top, 20)
            .navigationTitle("Exe Fitness")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
