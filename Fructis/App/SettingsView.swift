//
//  SettingsView.swift
//  Fructis
//
//  Created by Aneudys Amparo on 2/1/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    // Section 1
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructis", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources or many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                                
                        }
                        
                    }
                    
                    // Section 2
                    
                    // Section 3
                    GroupBox(
                        label:SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Aneudys Amparo")
                        SettingsRowView(name: "Designer", content: "Aneudys Amparo")
                        SettingsRowView(name: "Compactibility", content: "iOS 14")
                        SettingsRowView(name: "Twitter", linkLabel: "Twitter", linkDestination: "https://twitter.com/aneudysamparo")
                        SettingsRowView(name: "SwitfUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}


// MAKR: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
