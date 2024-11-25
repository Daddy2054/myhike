//
//  CustomBackgroundView.swift
//  myhike
//
//  Created by Jean on 25/11/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // depth
            Color.customGreenDark
            
                .cornerRadius(40)
                .offset(y: 12)
            
            // light
            Color.customGreenLight
            
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            // surface
            LinearGradient(colors: [
                .customGreenLight,
                Color.customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
    
        .padding()
}
