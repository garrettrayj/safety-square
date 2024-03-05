//
//  PlacardDivision.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import SwiftUI

struct PlacardDivision<HazardType: HazardProtocol>: View {
    @Binding var selection: HazardType

    @State private var index: Int = 0
    @State private var offset: CGFloat = 0

    var body: some View {
        GeometryReader { geometry in
            Button {
                withAnimation {
                    let next = segments.index(after: index)
                    if segments.indices.contains(next) {
                        index = next
                    }
                    offset = -geometry.size.height * CGFloat(index)
                    selection = segments[index]
                } completion: {
                    if index == segments.indices.last {
                        index = 0
                        offset = 0
                    }
                }
            } label: {
                ZStack {
                    VStack(spacing: 0) {
                        ForEach(Array(zip(segments.indices, segments)), id: \.0) { idx, hazard in
                            VStack(spacing: 0) {
                                if let pictogram = hazard.pictogram {
                                    pictogram
                                        .font(.system(size: 400, weight: .bold).leading(.tight))
                                        .minimumScaleFactor(0.1)
                                        .padding(.top, -geometry.size.width / 5)
                                        .padding(.bottom, -geometry.size.width / 10)
                                }
                                hazard.code
                                    .font(.system(size: 200, weight: .bold))
                                    .minimumScaleFactor(0.1)
                            }
                            .opacity(index == idx ? 1 : 0)
                        }
                        .padding(geometry.size.width / 5)
                        .frame(
                            width: geometry.size.width,
                            height: geometry.size.height
                        )
                        .foregroundStyle(.black)
                    }
                    .offset(y: offset)
                }
                .frame(
                    width: geometry.size.width,
                    height: geometry.size.height,
                    alignment: .top
                )
                .background(selection.color)
            }
            .buttonStyle(.plain)
            .clipShape(RoundedDiamond(cornerRadius: 4))
            .contentShape(RoundedDiamond(cornerRadius: 4))
            .onAppear {
                DispatchQueue.main.async {
                    index = segments.firstIndex(of: selection) ?? 0
                    offset = -geometry.size.height * CGFloat(index)
                }
            }
            .onChange(of: geometry.size) {
                offset = -geometry.size.height * CGFloat(index)
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }

    private var segments: [HazardType] {
        var segments = Array(HazardType.allCases)

        segments.append(HazardType.allCases.first!)

        return segments
    }
}

struct PlacardDivision_Previews: PreviewProvider {
    static var previews: some View {
        StatefulView()
    }

    private struct StatefulView: View {
        @State var selection: Flammability = .zero

        var body: some View {
            PlacardDivision(selection: $selection)
        }
    }
}
