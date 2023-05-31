//
//  SettingsView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double

    @State private var isChanging = false
    
    
    @State private var selection = 1
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        Form {
            Section {
                Text("Phone theme is " + (colorScheme == .light ? "light mode" : "dark mode"))
                    .font(.headline)
                    .foregroundColor(.indigo)
                
            }
            
            Section {
                
                Toggle("Navigation title", isOn: $titleOn.animation())
                    .font(.title)
                
                
                Text(titleOn ? "Navigation title is enabled" : "Navigation title is disabled")
                    .font(.callout)
                    .foregroundColor(.indigo)

                VStack(alignment: .leading) {

                    Slider(value: $rowHeight, in:  40.0...100.0, step: 10.0) {

                    } minimumValueLabel: {
                        Text("40")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { changed in
                        isChanging = changed
                    }

                    Text("Row height: \(Int(rowHeight))")
                }

                if isChanging {

                    InfoRow(post: posts[0], rowHeight: rowHeight)
                    
                }


                Picker("Picker", selection: $selection) {
                    Text("Mute").tag(0)
                    Text("Sound").tag(1)
                }
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true), rowHeight: .constant(40.0))
    }
}
