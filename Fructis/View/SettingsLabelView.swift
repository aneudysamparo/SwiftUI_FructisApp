//
//  SettingsLabelView.swift
//  Fructis
//
//  Created by Aneudys Amparo on 2/1/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    var body: some View {
        
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructis", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
