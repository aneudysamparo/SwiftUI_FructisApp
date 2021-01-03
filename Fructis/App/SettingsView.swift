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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    
                    GroupBox(
                        label:SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            }
                            else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    
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
