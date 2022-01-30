//
//  ContentModel.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 28.01.2022.
//

import Foundation
import UIKit
import SwiftUI

struct ProgramContent: Identifiable {
    var id: String {
            self.name
        }
    let name: String
    let image: Image
    let muscleGroup: String
    let numberOfSets: String
}


// Day 1

let Isinma1 = ProgramContent.init(name: "Şınav", image: Image("pushup"), muscleGroup: "Isınma", numberOfSets: "3x10")
let BenchPress = ProgramContent.init(name: "Bench Press", image: Image("benchpress"), muscleGroup: "Göğüs", numberOfSets: "3x10")
let InclineMachinePress = ProgramContent.init(name: "Incline Machine Press", image: Image("inclinemachinepress"), muscleGroup: "Göğüs", numberOfSets: "3x10")
let DumbellPullover = ProgramContent.init(name: "Dumbell Pullover", image: Image("dumbellpullover"), muscleGroup: "Göğüs", numberOfSets: "3x10")
let DumbellFly = ProgramContent.init(name: "Dumbell Fly", image: Image("dumbellfly"), muscleGroup: "Göğüs", numberOfSets: "3x10")
let TricepPushdown = ProgramContent.init(name: "Tricep Pushdown", image: Image("triceppushdown"), muscleGroup: "Arka Kol", numberOfSets: "4x10")
let OverheadDumbellExtention = ProgramContent.init(name: "Overhead Dumbell Extention", image: Image("overheaddumbellextention"), muscleGroup: "Arka Kol", numberOfSets: "3x10")
let BenchDips = ProgramContent.init(name: "Bench Dips", image: Image("benchdips"), muscleGroup: "Arka Kol", numberOfSets: "3x10")


// Day 2

let Isinma2 = ProgramContent.init(name: "Koşu Bandı", image: Image("run"), muscleGroup: "Isınma", numberOfSets: "Süre: 10dk\nHız: 6")
let SeatedCableLatPulldown = ProgramContent.init(name: "Seated Cable Lat Pulldown", image: Image("seatedcablelatpulldown"), muscleGroup: "Sırt", numberOfSets: "3x10")
let ReverseGripPulldown = ProgramContent.init(name: "Reverse Grip Pulldown", image: Image("reversegrippulldown"), muscleGroup: "Sırt", numberOfSets: "3x10")
let SeatedCableRow = ProgramContent.init(name: "Seated Cable Row", image: Image("seatedcablerow"), muscleGroup: "Sırt", numberOfSets: "3x10")
let DumbellRow = ProgramContent.init(name: "Dumbell Row", image: Image("dumbellrow"), muscleGroup: "Sırt", numberOfSets: "3x10")
let DumbellCurl = ProgramContent.init(name: "Dumbell Curl", image: Image("dumbellcurl"), muscleGroup: "Ön Kol", numberOfSets: "3x10")
let HummberCurl = ProgramContent.init(name: "Hummber Curl", image: Image("hummbercurl"), muscleGroup: "Ön Kol", numberOfSets: "3x10")
let ConcentrationCurl = ProgramContent.init(name: "Concentration Curl", image: Image("concentrationcurl"), muscleGroup: "Ön Kol", numberOfSets: "3x10")

// Day 3

let Isinma3 = ProgramContent.init(name: "Koşu Bandı", image: Image("run"), muscleGroup: "Isınma", numberOfSets: "Süre: 10dk\nHız: 6")
let DumbellShoulderPress = ProgramContent.init(name: "Dumbell Shoulder Press", image: Image("dumbellshoulderpress"), muscleGroup: "Omuz", numberOfSets: "3x10")
let DumbellFrontRaise = ProgramContent.init(name: "Dumbell Front Raise", image: Image("dumbellfrontraise"), muscleGroup: "Omuz", numberOfSets: "3x10")
let DumbellSideLateralRaise = ProgramContent.init(name: "Dumbell Side Lateral Raise", image: Image("dumbellsidelateralraise"), muscleGroup: "Omuz", numberOfSets: "3x10")
let BarbellUprightRow = ProgramContent.init(name: "Barbell Upright-row", image: Image("barbelluprightrow"), muscleGroup: "Omuz", numberOfSets: "3x10")
let LegPress = ProgramContent.init(name: "Leg Press", image: Image("legpress"), muscleGroup: "Bacak", numberOfSets: "4x10")
let LegExtention = ProgramContent.init(name: "Leg Extention", image: Image("legextention"), muscleGroup: "Bacak", numberOfSets: "3x10")
let LegCurl = ProgramContent.init(name: "Leg Curl", image: Image("legcurl"), muscleGroup: "Bacak", numberOfSets: "3x10")
let BarbellCalfRaises = ProgramContent.init(name: "Barbell Calf Raises", image: Image("barbellcalfraises"), muscleGroup: "Bacak", numberOfSets: "3x10")

// Day 4

let ReverseCrunch = ProgramContent.init(name: "Reverse Crunch", image: Image("reversecrunch"), muscleGroup: "Karın", numberOfSets: "4x15")
let ToeTouches = ProgramContent.init(name: "Toe Touches", image: Image("toetouches"), muscleGroup: "Karın", numberOfSets: "4x15")
let Plank = ProgramContent.init(name: "Plank", image: Image("plank"), muscleGroup: "Karın", numberOfSets: "(Süre Sınırı Yok)")
