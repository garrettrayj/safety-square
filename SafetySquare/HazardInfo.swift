//
//  HazardInfo.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct HazardInfo<HazardType: HazardProtocol>: View {
    @Binding var hazard: HazardType

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                HazardHeader(hazard: $hazard)
            }
            .padding(4)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding()
            .background(.thickMaterial)
            .zIndex(1)

            Divider()

            ScrollView {
                VStack(alignment: .leading) {
                    hazard.information
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .scrollClipDisabled()
        }
        .background(.background.quaternary)
        .navigationTitle(Text("Info"))
        .toolbarBackground(.visible)
    }
}
