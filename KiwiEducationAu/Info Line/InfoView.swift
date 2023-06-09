//
//  InfoView.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoView: View {
    var article: [Info]
    var titleOn: Bool
    var rowHeight: Double

    @Binding var secondTabItem: TopicItems

    var body: some View {
            List(article) { post in
                NavigationLink {
                    InfoDetails(post: post, titleOn: titleOn, rowHeight: rowHeight)
                } label: {
                    InfoRow(post: post, rowHeight: rowHeight)
                }
            }
            .navigationTitle(titleOn ? "Статьи" : "")
            .listStyle(.plain)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(article: posts, titleOn: false, rowHeight: 40, secondTabItem: .constant(.about))
    }
}
