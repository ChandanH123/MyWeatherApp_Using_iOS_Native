//
//  CustomPlaceholder.swift
//  MyWeather
//
//  Created by Chandan on 15/03/22.
//

import Foundation
import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            HStack {
                placeholder().opacity(shouldShow ? 1 : 0)
                
                Image(systemName: "building.2")
                .imageScale(.medium)
                .opacity(shouldShow ? 1 : 0)
                
            }
            self
        }
    }
}
