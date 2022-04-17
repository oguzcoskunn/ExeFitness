//
//  ContentView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 16.04.2022.
//

import SwiftUI

struct AdvancedView: View {
    var Day1 = [ProgramContent]()
    var Day2 = [ProgramContent]()
    var Day3 = [ProgramContent]()
    var Day4 = [ProgramContent]()
    
    
    init() {
        // Day 1
        self.Day1.append(Isinma2)
        self.Day1.append(BenchPress2)
        self.Day1.append(BarbellInclineChestPress)
        self.Day1.append(InclineDumbellPress)
        self.Day1.append(CableCrossover)
        self.Day1.append(ReverseCrunch)
        self.Day1.append(ToeTouches)
        self.Day1.append(Plank)
        
        // Day 2
        self.Day2.append(PullUp)
        self.Day2.append(BarbellBentOver)
        self.Day2.append(DumbellRow)
        self.Day2.append(TbarRow)
        self.Day2.append(Deadlift)
        
        // Day 3
        self.Day3.append(Isinma2)
        self.Day3.append(ShoulderDumbellPress)
        self.Day3.append(BarbellUprightRow)
        self.Day3.append(DumbellSideLateralRaise)
        self.Day3.append(DumbellShrughs)
        self.Day3.append(Squat)
        self.Day3.append(LegPress2)
        self.Day3.append(BarbellCalfRaises)
        
        // Day 4
        self.Day4.append(Isinma2)
        self.Day4.append(StandingBarbellCurl)
        self.Day4.append(DumbellCurl)
        self.Day4.append(HummberCurl)
        self.Day4.append(CloseGripBenchPress)
        self.Day4.append(OverheadDumbellExtention)
        self.Day4.append(SkullCrushers)
        self.Day4.append(RopeCurl)
    }
    
    var body: some View {
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
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Advanced")
        .font(.system(size: 45, weight: .bold))
        .foregroundColor(.red)
        .padding(.top, 20)
    }
}
