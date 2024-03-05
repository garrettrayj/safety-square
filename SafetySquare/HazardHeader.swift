//
//  HazardHeader.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct HazardHeader<HazardType: HazardProtocol>: View {
    @Binding var hazard: HazardType

    var body: some View {
        VStack(alignment: .leading) {
            Grid {
                GridRow {
                    Image(systemName: hazard.hazardTypeSymbol)
                    hazard.hazardTypeName.frame(maxWidth: .infinity, alignment: .leading)
                }
                .font(.headline)
                .imageScale(.small)

                GridRow {
                    Group {
                        if type(of: hazard) == SpecialHazard.self {
                            Text("")
                        } else {
                            hazard.code
                        }
                    }
                    .font(.title.weight(.heavy))
                    .monospacedDigit()

                    hazard.title
                        .font(.title2.weight(.bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .minimumScaleFactor(0.5)
        .foregroundStyle(.black)
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(hazard.color)
        .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}
