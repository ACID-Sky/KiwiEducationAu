//
//  SettingsView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var isOn = false

    @State private var sliderValue = 10.0
    @State private var isChanging = false


    @State private var selection = 1

    @Environment(\.colorScheme) var colorScheme

    var body: some View {

        Form {
            Section {
                Text("Phone theme is " + (colorScheme == .light ? "light mode" : "dark mode"))
                    .font(.headline)
                    .foregroundColor(.indigo)

                Toggle(isOn: $isOn.animation()) {
                    Text("My toggle")
                }

                Text("Switch description")
                    .font(.footnote)

            }

            Section {


                Slider(value: $sliderValue, in: 0...100) { changed in
                    isChanging = changed
                }

                Text("Voluem: \(Int(sliderValue))")

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
        SettingsView()
    }
}
