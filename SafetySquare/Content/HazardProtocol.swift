//
//  HazardProtocol.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

protocol HazardProtocol: CaseIterable, Hashable {
    var color: Color { get }
    var hazardTypeName: Text { get }
    var hazardTypeSymbol: String { get }
    var pictogram: Text? { get }
    var code: Text { get }
    var title: Text { get }
    var information: Text { get }
}
