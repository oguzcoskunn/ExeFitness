//
//  DetailView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 28.01.2022.
//

import SwiftUI

struct DetailView: View {
    var details: ProgramContent
    var body: some View {
        VStack {
            Text(details.name)
            details.image
        }
        
    }
}
