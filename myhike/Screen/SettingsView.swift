//
//  SettingsView.swift
//  myhike
//
//  Created by Jean on 27/11/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        List
        {
            // MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size:80, weight: .black))
                    
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size:66, weight: .black))
                        Text("Editor' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size:80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark],  startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                VStack(spacing:8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike wich looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity
                )
            } //: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            Section(header: Text("ABOUT THE APP"),
                    footer: HStack {
                Spacer()
                Text("Copyright © 2035 Laurel Trails")
                Spacer()
            }
                    
                .padding(.vertical,8)
            ) {
                // 1. Basic Labeled Content
//                LabeledContent("Application",value: "Hike")
                
                // 2. Advanced Labeled Content
                CustomListRowView(rowLabel:"Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS 13.0 and above", rowTintColor: .red                )
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "SwiftUI", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gearshape", rowContent: "1.0.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "License", rowIcon: "lock", rowContent: "MIT", rowTintColor: .green)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .indigo, rowLinkLabel: "Dummy Academy", rowLinkDestination: "http://www.example.com")
        
            } //: SECTION
            
        } //: LIST
        
    }
}

#Preview {
    SettingsView()
}
