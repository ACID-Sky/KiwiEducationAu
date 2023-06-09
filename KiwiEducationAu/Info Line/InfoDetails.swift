//
//  InfoDetails.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoDetails: View {
    var post: Info
    var titleOn: Bool
    var rowHeight: Double

    @State private var buttonDidTap = false
    
    var body: some View {
        VStack() {
            ScrollView {
                post.image
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 16)
                    .shadow(radius: 16)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text(post.subtitle)
                        .font(.headline).fontWeight(.heavy)
                        .foregroundColor(.indigo)
                    
                    Divider()
                    
                    Text(post.description)
                        .font(.callout).fontWeight(.light)
                }
                .padding(.leading, 8)
            }
            .navigationTitle(post.title)
            .background(Color(.systemGray4))

            if !post.posts.isEmpty {
                
                Divider()

                Button("Статьи") {
                    buttonDidTap.toggle()

                }
                .padding(.bottom, 20)
                .font(.headline).fontWeight(.heavy)
                .foregroundColor(.indigo)

                if buttonDidTap {
                    Divider()

                    InfoView(article: post.posts, titleOn: titleOn, rowHeight: rowHeight, secondTabItem: .constant(.about))
                }
            }
        }
        
        Spacer()
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: posts[0], titleOn: true, rowHeight: 40.0)
    }
}
