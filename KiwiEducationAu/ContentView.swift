//
//  ContentView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(wrappedValue: true, "titleOn") var titleOn
    @AppStorage(wrappedValue: 40.0, "rowHeight") var rowHeight

    var body: some View {
        TabView() {
            InfoView(titleOn: titleOn, rowHeight: rowHeight)
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }

            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.raised.app.fill")
                }

            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
