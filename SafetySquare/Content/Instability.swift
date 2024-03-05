//
//  Instability.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

enum Instability: Int, HazardProtocol {
    case zero  = 0
    case one   = 1
    case two   = 2
    case three = 3
    case four  = 4

    var color: Color {
        Color("HazardYellow")
    }

    var hazardTypeName: Text {
        Text("Instability")
    }

    var hazardTypeSymbol: String {
        "burst"
    }

    var pictogram: Text? {
        nil
    }

    var code: Text {
        Text("\(self.rawValue)")
    }

    var title: Text {
        switch self {
        case .zero:
            Text("Stable")
        case .one:
            Text("Unstable if Heated")
        case .two:
            Text("Violent Chemical Change")
        case .three:
            Text("Shock/Heat May Detonate")
        case .four:
            Text("May Detonate")
        }
    }

    var information: Text {
        switch self {
        case .zero:
            Text("""
            Normally stable, even under fire exposure conditions, and is not reactive with water.

            Examples:

            - Helium
            - Nitrogen
            - Carbon dioxide
            """)
        case .one:
            Text("""
            Normally stable, but can become unstable at elevated temperatures and pressures.

            Examples:

            - Propylene (Propene)
            - Ammonium acetate
            - Carbonic acid
            """)
        case .two:
            Text("""
            Undergoes violent chemical change at elevated temperatures and pressures, reacts violently with water, or may form explosive mixtures with water.

            Examples:

            - White phosphorus
            - Potassium
            - Sodium
            """)
        case .three:
            Text("""
            Capable of detonation or explosive decomposition but requires a strong initiating source, must be heated under confinement before initiation, reacts explosively with water, or will detonate if severely shocked.

            Examples:

            - Ammonium nitrate
            - Caesium
            - Hydrogen peroxide
            """)
        case .four:
            Text("""
            Readily capable of detonation or explosive decomposition at normal temperatures and pressures.

            Examples:

            - Nitroglycerin
            - Chlorine dioxide
            - Nitrogen triiodide
            - Manganese heptoxide
            - Trinitrotoluene (TNT)
            - Picric acid
            """)
        }
    }
}
