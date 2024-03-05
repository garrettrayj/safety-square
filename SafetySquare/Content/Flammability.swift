//
//  Flammability.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

enum Flammability: Int, HazardProtocol {
    case zero  = 0
    case one   = 1
    case two   = 2
    case three = 3
    case four  = 4

    var color: Color {
        Color("HazardRed")
    }

    var hazardTypeName: Text {
        Text("Flammability")
    }

    var hazardTypeSymbol: String {
        "flame"
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
            Text("Will Not Burn")
        case .one:
            Text("Flash Point Above \(Measurement(value: 200, unit: UnitTemperature.fahrenheit).temperatureFormatted())")
        case .two:
            Text("Flash Point Above \(Measurement(value: 100, unit: UnitTemperature.fahrenheit).temperatureFormatted())")
        case .three:
            Text("Flash Point Below \(Measurement(value: 100, unit: UnitTemperature.fahrenheit).temperatureFormatted())")
        case .four:
            Text("Flash Point Below \(Measurement(value: 73, unit: UnitTemperature.fahrenheit).temperatureFormatted())")
        }
    }

    var information: Text {
        switch self {
        case .zero:
            Text("""
            Materials that will not burn under typical fire conditions, including intrinsically noncombustible materials such as concrete, stone, and sand. Materials that will not burn in air unless exposed to a temperature of \(Measurement(value: 1500, unit: UnitTemperature.fahrenheit).temperatureFormatted()) for more than 5 minutes.

            Examples:

            - Carbon tetrachloride
            - Silicon dioxide (Silica)
            - Perfluorohexane
            """)
        case .one:
            Text("""
            Materials that require considerable preheating, under all ambient temperature conditions, before ignition and combustion can occur. Includes some finely divided suspended solids that do not require heating before ignition can occur. Flash point at or above \(Measurement(value: 200, unit: UnitTemperature.fahrenheit).temperatureFormatted()).

            Examples:

            - Mineral oil
            - Ammonia
            - Ethylene glycol
            """)
        case .two:
            Text("""
            Must be moderately heated or exposed to relatively high ambient temperature before ignition can occur. Flash point between \(Measurement(value: 100, unit: UnitTemperature.fahrenheit).temperatureFormatted()) and \(Measurement(value: 200, unit: UnitTemperature.fahrenheit).temperatureFormatted()).

            Examples:

            - Diesel fuel
            - Paper
            - Sulfur
            """)
        case .three:
            Text("""
            Liquids and solids that can be ignited under almost all ambient temperature conditions. Liquids having a flash point below \(Measurement(value: 73, unit: UnitTemperature.fahrenheit).temperatureFormatted()) and having a boiling point at or above \(Measurement(value: 100, unit: UnitTemperature.fahrenheit).temperatureFormatted()) or having a flash point between \(Measurement(value: 73, unit: UnitTemperature.fahrenheit).temperatureFormatted()) and \(Measurement(value: 100, unit: UnitTemperature.fahrenheit).temperatureFormatted()).

            Examples:

            - Acetone
            - Ethanol
            """)
        case .four:
            Text("""
            Will rapidly or completely vaporize at normal atmospheric pressure and temperature, or is readily dispersed in air and will burn readily. Includes pyrophoric substances. Flash point below room temperature at \(Measurement(value: 73, unit: UnitTemperature.fahrenheit).temperatureFormatted()).

            Examples:

            - Gasoline
            - Acetylene
            - Propane
            - Hydrogen gas
            - Diborane
            """)
        }
    }
}
