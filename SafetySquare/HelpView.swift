//
//  HelpView.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 3/2/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct HelpView: View {
    @Environment(\.openURL) private var openURL

    var body: some View {
        Form {
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("1. Select Hazards").font(.headline)
                    Text("Tap areas on the diamond to change hazard degrees.")
                }
                VStack(alignment: .leading, spacing: 12) {
                    Text("2. View Information").font(.headline)
                    Text("Tap the hazard description to show details.")
                }
            } header: {
                Text("Usage")
            }

            Section {
                LabeledContent {
                    Text("\(Bundle.main.releaseVersionNumber) (\(Bundle.main.buildVersionNumber))")
                } label: {
                    Label {
                        Text("Version")
                    } icon: {
                        Image(systemName: "info.circle")
                    }
                }
                Button {
                    openURL(URL(string: "mailto:support@devsci.net?subject=Safety%20Square%20support")!)
                } label: {
                    Label {
                        Text("Email Support")
                    } icon: {
                        Image(systemName: "lifepreserver")
                    }
                }
            } header: {
                Text("About \(Bundle.main.name)")
            } footer: {
                Text(Bundle.main.copyright).font(.footnote)
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
        .background(.background.quaternary)
        .navigationTitle(Text("Help"))
        .toolbarBackground(.visible)
    }
}
