//
//  InfoDetails.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    
    var body: some View {
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
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: posts[0])
    }
}
