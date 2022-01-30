//
//  ExtraDetailView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 29.01.2022.
//

import SwiftUI

struct ExtraDetailView: View {
    let detail: ProgramContent
    
    var body: some View {
            VStack {
                VStack(alignment: .center) {
                    Text(detail.name)
                        .padding()
                    Text(detail.numberOfSets)
                        .padding()
                }.font(.system(size: 35, weight: .bold))
                
                detail.image
                    .resizable()
                    .scaledToFit()
                    .padding()
                Spacer()
            }
    }
}

