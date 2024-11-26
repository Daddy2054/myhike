//
//  GradientButtonStyle.swift
//  myhike
//
//  Created by Jean on 26/11/24.
//

import Foundation
import  SwiftUI

struct GradientButtonStyle: ButtonStyle {
   func makeBody(configuration: Configuration) -> some View {
        configuration.label
           .padding(.vertical)
           .padding(.horizontal, 30)
           .background(
                       //  condditional statteemeent with nil coalescing
            // condition ? A : B
            configuration.isPressed ?
            // A: when the user pressed the button
            LinearGradient(colors:  [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
            :
            // b: whenn the button is not pressed
            LinearGradient(colors:  [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
           )
           .cornerRadius(40)
    }
}
