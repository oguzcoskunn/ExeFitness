//
//  CheckBoxFieldView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 29.01.2022.
//

import Foundation
import SwiftUI

struct CheckboxFieldView : View {

    @State var checkState:Bool = false ;

    var body: some View {

         Button(action:
            {
                //1. Save state
                self.checkState = !self.checkState


        }) {
            HStack(alignment: .top, spacing: 10) {

                        //2. Will update according to state
                   Rectangle()
                            .fill(self.checkState ? Color.green : Color.red)
                            .frame(width:20, height:20, alignment: .center)
                            .cornerRadius(5)

            }
        }
        .foregroundColor(Color.white)

    }

}
