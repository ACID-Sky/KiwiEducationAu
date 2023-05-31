//
//  InfoView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoView: View {
    var titleOn: Bool

    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle(titleOn ? "About" : "")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: false)
    }
}
