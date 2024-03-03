//
//  Measurement+Extensions.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 3/2/24.
//
//  SPDX-License-Identifier: MIT
//

import Foundation

extension Measurement where UnitType == UnitTemperature {
    func temperatureFormatted() -> String {
        self.formatted(
            .measurement(
                width: .abbreviated,
                numberFormatStyle: .number.precision(.fractionLength(0))
            )
        )
    }
}
