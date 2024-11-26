//
//  CardView.swift
//  myhike
//
//  Created by Jean on 25/11/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // header
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight,.customGrayMedium                           ],startPoint: .top,endPoint: .bottom))
                        Spacer()
                        Button
                        {// action show a sheeet
                            print("show sheet")
                        }
                        label: {
                            CustomButtonView()
                            
                            
                        }
                    }
                    Text("Fun  and enjoyable outdoor activities for all ages")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                    
                } // header
                .padding(.horizontal, 30)
                // main coontent
                
                ZStack {
                    Circle()
                        .fill(LinearGradient(colors:  [.customIndigoMedium, .customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing
                                            ))
                        .frame(width: 256,height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // footter
            } // vstack
        } // card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
