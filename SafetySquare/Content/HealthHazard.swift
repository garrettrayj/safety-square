//
//  HealthHazard.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

enum HealthHazard: Int, HazardProtocol {
    case zero  = 0
    case one   = 1
    case two   = 2
    case three = 3
    case four  = 4
    
    var color: Color {
        Color("HazardCyan")
    }
    
    var hazardTypeName: Text {
        Text("Health Hazard")
    }
    
    var hazardTypeSymbol: String {
        "stethoscope"
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
            Text("Normal Material")
        case .one:
            Text("Slightly Hazardous")
        case .two:
            Text("Hazardous")
        case .three:
            Text("Extreme Danger")
        case .four:
            Text("Deadly")
        }
    }
    
    var information: Text {
        switch self {
        case .zero:
            Text("""
            Poses no health hazard, requires no precautions, and would offer no hazard beyond that of ordinary combustible materials.

            Examples:

            - Wood
            - Sugar
            - Salt
            - Propylene glycol
            """)
        case .one:
            Text("""
            Exposure would cause irritation with only minor residual injury.

            Examples:

            - Acetone
            - Sodium bromate
            - Potassium chloride
            """)
        case .two:
            Text("""
            Intense or continued but not chronic exposure could cause temporary incapacitation or possible residual injury.

            Examples:

            - Diethyl ether
            - Ammonium phosphate
            - Carbon dioxide
            - Chloroform
            - Diethyltoluamide (DEET)
            """)
        case .three:
            Text("""
            Short exposure could cause serious temporary or moderate residual injury.

            Examples:

            - Liquid hydrogen
            - Sulfuric acid
            - Calcium hypochlorite
            - Carbon monoxide
            - Hexafluorosilicic acid
            - Zinc chloride
            - Sodium hydroxide
            """)
        case .four:
            Text("""
            Very short exposure could cause death or major residual injury.

            Examples:

            - Aluminium phosphide
            - Hydrogen cyanide
            - Phosgene
            - Diborane
            - Methyl isocyanate (MIC)
            - Hydrofluoric acid
            """)
        }
    }
}

