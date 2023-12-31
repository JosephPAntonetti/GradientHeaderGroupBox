//
//  GradientHeaderGroupBoxStyle.swift
//
//
//  Created by Joseph Antonetti on 12/31/23.
//

import Foundation
import SwiftUI

public struct GradientHeaderGroupBoxStyle : GroupBoxStyle {
    
    let headerColor : Color
    
    public init(headerColor: Color) {
        self.headerColor = headerColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            HStack {
                configuration.label
                    .foregroundStyle(.ultraThickMaterial)
                Spacer()
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background {
                Rectangle()
                    .foregroundStyle(
                        LinearGradient(
                            colors: [headerColor, .clear],
                            startPoint: .leading, endPoint: .trailing))
            }
            .textCase(.uppercase)
            .font(.headline)
            configuration.content
                .padding(.horizontal, 8)
                .padding(.bottom, 8)
        }
        
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.secondary.quinary)
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    GroupBox {
        Text("Content")
    } label: {
        Label("Label", systemImage: "star")
    }
    .groupBoxStyle(GradientHeaderGroupBoxStyle(headerColor: .blue))
    .padding()
}
