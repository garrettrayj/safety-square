//
//  Navigation.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct Overview: View {
    @Binding var healthHazard: HealthHazard
    @Binding var flammability: Flammability
    @Binding var instability: Instability
    @Binding var specialHazard: SpecialHazard

    var body: some View {
        VStack(spacing: 4) {
            NavigationLink {
                HazardInfo(hazard: $healthHazard)
            } label: {
                HazardHeader(hazard: $healthHazard)
            }
            NavigationLink {
                HazardInfo(hazard: $flammability)
            } label: {
                HazardHeader(hazard: $flammability)
            }
            NavigationLink {
                HazardInfo(hazard: $instability)
            } label: {
                HazardHeader(hazard: $instability)
            }
            NavigationLink {
                HazardInfo(hazard: $specialHazard)
            } label: {
                HazardHeader(hazard: $specialHazard)
            }
        }
        .buttonStyle(.plain)
        .padding(4)
        .background(Color("Border"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        StatefulView()
    }

    private struct StatefulView: View {
        @State var healthHazard: HealthHazard = .zero
        @State var flammability: Flammability = .zero
        @State var instability: Instability = .zero
        @State var specialHazard: SpecialHazard = .notApplicable

        var body: some View {
            Overview(
                healthHazard: $healthHazard,
                flammability: $flammability,
                instability: $instability,
                specialHazard: $specialHazard
            )
        }
    }
}
