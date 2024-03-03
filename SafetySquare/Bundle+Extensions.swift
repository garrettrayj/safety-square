//
//  Bundle+Extensions.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 3/3/24.
//
//  SPDX-License-Identifier: MIT
//

import Foundation

extension Bundle {
    var name: String {
        return infoDictionary!["CFBundleName"] as? String ?? "NA"
    }

    var releaseVersionNumber: String {
        return infoDictionary?["CFBundleShortVersionString"] as? String ?? "NA"
    }

    var buildVersionNumber: String {
        return infoDictionary?["CFBundleVersion"] as? String ?? "0"
    }

    var copyright: String {
        return infoDictionary?["NSHumanReadableCopyright"] as? String ?? "NA"
    }
}
