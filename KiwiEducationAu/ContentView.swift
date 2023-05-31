//
//  ContentView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }

            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.raised.app.fill")
                }

            SettingsView()
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
