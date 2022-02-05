//
//  PassedTimeView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 5.02.2022.
//

import SwiftUI

struct PassedTimeView: View {
    let from: Date
    let to: Date
    var body: some View {
        let diffs = Calendar.current.dateComponents([.year, .month, .day], from: self.from, to: self.to)
        
        Group {
             Text(diffs.year! > 0 ? " \(diffs.year!) yıl" : "") + Text(diffs.month! > 0 ? " \(diffs.month!) ay" : "") + Text(diffs.day! > 0 ? " \(diffs.day!) gün" : "")
        }
    }
}


