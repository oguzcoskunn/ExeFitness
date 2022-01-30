//
//  DetailView.swift
//  ExeFitness
//
//  Created by Oğuz Coşkun on 28.01.2022.
//

import SwiftUI

struct DayDetailView: View {
    var details: [ProgramContent]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        ForEach(details) { detail in
                            HStack(spacing: 20) {
                                CheckboxFieldView()
                                Text(detail.name)
                                    .frame(height: 50)
                            }
                        }
                    }
                    .frame(width: 140)
                    Spacer()
                    VStack(alignment: .center) {
                        ForEach(details) { detail in
                            Text(detail.numberOfSets)
                                .frame(height: 50)
                        }
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        ForEach(details) { detail in
                            Text(detail.muscleGroup)
                                .frame(height: 50)
                        }
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        ForEach(details) { detail in
                            NavigationLink {
                                ExtraDetailView(detail: detail)
                            } label: {
                                Image(systemName: "info.circle.fill")
                                    .resizable()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                            }
                            .frame(height: 50)
                        }
                    }
                    
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            .font(.system(size: 15))
            .padding(.top, 20)
        }
            
    }
}
