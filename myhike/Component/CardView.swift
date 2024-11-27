//
//  CardView.swift
//  myhike
//
//  Created by Jean on 25/11/24.
//

import SwiftUI

struct CardView: View {
    //  mark: properties
    @State private var imageNumber:  Int = 1
    @State private var randomNumber:  Int = 1
    @State private var isShowingSheet: Bool = false
    
    // functions
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while        randomNumber == imageNumber
                        imageNumber = randomNumber
    }
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
                            isShowingSheet.toggle()
                        }
                        label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet ){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Fun  and enjoyable outdoor activities for all ages")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                    
                } // header
                .padding(.horizontal, 30)
                // MARK: -  main coontent
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default,value:imageNumber)
                }
                // MARK: -FOOTER
                Button{
                    // action: generate a random number
                    randomImage()
                } label: {
                    Text("Explore Now")
                    
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle           (LinearGradient(colors:  [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())

                
            } // vstack
        } // card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
