//
//  Placard.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct Placard: View {
    @Binding var healthHazard: HealthHazard
    @Binding var flammability: Flammability
    @Binding var instability: Instability
    @Binding var specialHazard: SpecialHazard
    
    var body: some View {
        ZStack {
            VStack {
                PlacardDivision(selection: $flammability)
                PlacardDivision(selection: $specialHazard)
            }
            
            HStack {
                PlacardDivision(selection: $healthHazard)
                PlacardDivision(selection: $instability)
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .padding(8)
        .background(Color("Border"))
        .clipShape(RoundedDiamond(cornerRadius: 8))
        .frame(minWidth: 200, minHeight: 200)
    }
}

struct Placard_Previews: PreviewProvider {
    static var previews: some View {
        StatefulView()
    }
    
    private struct StatefulView : View {
        @State var healthHazard: HealthHazard = .zero
        @State var flammability: Flammability = .zero
        @State var instability: Instability = .zero
        @State var specialHazard: SpecialHazard = .notApplicable
        
        var body: some View {
            Placard(
                healthHazard: $healthHazard,
                flammability: $flammability,
                instability: $instability,
                specialHazard: $specialHazard
            )
        }
    }
}
