//
//  ContentView.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct ContentView: View {
    @AppStorage("flammability") 
    private var flammability: Flammability = .zero
    
    @AppStorage("health-hazard")
    private var healthHazard: HealthHazard = .zero
    
    @AppStorage("instability")
    private var instability: Instability = .zero
    
    @AppStorage("special-hazard")
    private var specialHazard: SpecialHazard = .notApplicable
    
    var body: some View {
        NavigationStack {
            ViewThatFits(in: .horizontal) {
                HStack {
                    Spacer(minLength: 0)
                    Placard(
                        healthHazard: $healthHazard,
                        flammability: $flammability,
                        instability: $instability,
                        specialHazard: $specialHazard
                    )
                    Spacer(minLength: 32)
                    Overview(
                        healthHazard: $healthHazard,
                        flammability: $flammability,
                        instability: $instability,
                        specialHazard: $specialHazard
                    )
                    .frame(maxWidth: 400)
                    Spacer(minLength: 0)
                }
                
                VStack(alignment: .center, spacing: 0) {
                    Spacer(minLength: 0)
                    Placard(
                        healthHazard: $healthHazard,
                        flammability: $flammability,
                        instability: $instability,
                        specialHazard: $specialHazard
                    )
                    Spacer(minLength: 16)
                    Overview(
                        healthHazard: $healthHazard,
                        flammability: $flammability,
                        instability: $instability,
                        specialHazard: $specialHazard
                    )
                    .frame(maxWidth: 400)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.background.quaternary, ignoresSafeAreaEdges: .all)
            .navigationTitle(Text("Safety Square"))
            .toolbarBackground(.visible)
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        HelpView()
                    } label: {
                        Label {
                            Text("Help")
                        } icon: {
                            Image(systemName: "questionmark.circle")
                        }
                    }
                }
            }
        }
        .tint(.primary)
    }
}

#Preview {
    ContentView()
}
